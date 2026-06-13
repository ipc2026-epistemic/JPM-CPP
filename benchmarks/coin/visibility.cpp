#include "jpm/observation.hpp"

#include <stdexcept>

namespace {

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "peeking") {
        return true;
    }
    if (var.schema == "coin") {
        return state_value_is(task, state, "peeking " + agent, "t");
    }
    throw std::runtime_error("native_coin visibility does not know schema: " + var.schema);
}

std::vector<int> observe(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent) {
    return project_visible_state(task, state, agent, visible);
}

const ObservationModelRegistration registration("native_coin", observe);

}  // namespace
