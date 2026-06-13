#include "jpm/observation.hpp"

#include <stdexcept>

namespace {

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "movable" || var.schema == "sharable" ||
        var.schema == "receivable" || var.schema == "searched" ||
        var.schema == "room_id" || var.schema == "connected" ||
        var.schema == "agent_loc" || var.schema == "blockable" ||
        var.schema == "loc_shared" || var.schema == "loc_sensed") {
        return true;
    }
    if (var.schema == "shared") {
        return state_value_is(task, state, "receivable " + agent, "1");
    }
    if (var.schema == "survivor_loc") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("survivor_loc visibility expects exactly one argument");
        }
        const std::string &survivor = var.arguments[0];
        if (same_value_string(task, state, "agent_loc " + agent, "survivor_loc " + survivor)) {
            return true;
        }
        return state_value_is(task, state, "shared " + survivor, "1") &&
               state_value_is(task, state, "receivable " + agent, "1");
    }
    if (var.schema == "blocked") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("blocked visibility expects exactly one argument");
        }
        const std::string &loc = var.arguments[0];
        return state_value_is(task, state, "loc_sensed " + loc + " " + agent, "1") ||
               state_value_is(task, state, "loc_shared " + loc, "1");
    }
    throw std::runtime_error("grid visibility does not know schema: " + var.schema);
}

std::vector<int> observe(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent) {
    return project_visible_state(task, state, agent, visible);
}

const ObservationModelRegistration registration("grid", observe);

}  // namespace
