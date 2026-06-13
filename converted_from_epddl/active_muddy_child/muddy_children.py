import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger, special_value


LOGGER_NAME = "converted_muddy_children"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None

    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME, handlers, logger_level=LOGGER_LEVEL)

    def _validate_agent_and_var(
        self,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
    ) -> Function:
        if agent_index not in entities:
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{var_name}] not found in functions")
        return functions[var_name]

    def _asked_status(self, state, child):
        return state.get(f"asked {child}")

    def _self_evidence_is_sufficient(self, state, agent_index):
        all_visible_muddy_answered_no = True
        all_visible_muddy_asked = True
        any_visible_muddy_answered_yes = False

        for var_name, value in state.items():
            if not var_name.startswith("muddy ") or value != "t":
                continue
            child = var_name.split(" ", 1)[1]
            if child == agent_index:
                continue

            status = self._asked_status(state, child)
            if status == "yes":
                all_visible_muddy_answered_no = False
                any_visible_muddy_answered_yes = True
            elif status == "no":
                pass
            else:
                all_visible_muddy_answered_no = False
                all_visible_muddy_asked = False

        return all_visible_muddy_answered_no or (
            all_visible_muddy_asked and any_visible_muddy_answered_yes
        )

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        function = self._validate_agent_and_var(agent_index, var_name, entities, functions)
        if function.function_schema_name == "asked":
            return True
        if function.function_schema_name != "muddy":
            raise ValueError(f"function_schema_name [{function.function_schema_name}] not found")
        if len(function.entity_index_list) != 1:
            raise ValueError("muddy function should have exactly one entity", var_name)
        target_index = function.entity_index_list[0]
        return target_index != agent_index or self._self_evidence_is_sufficient(state, agent_index)

    def get1o(self, parent_state, agt_id):
        new_state = dict(parent_state)
        for var_name in parent_state:
            if not var_name.startswith("muddy "):
                continue
            target = var_name.split(" ", 1)[1]
            if target == agt_id and not self._self_evidence_is_sufficient(parent_state, agt_id):
                new_state[var_name] = special_value.HAVENT_SEEN
        return new_state
