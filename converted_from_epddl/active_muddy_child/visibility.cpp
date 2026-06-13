#include "jpm/observation.hpp"

#include <stdexcept>
#include <string>
#include <vector>

namespace {

int asked_var_id(const Task &task, const std::string &child) {
    return maybe_lookup_var(task, "asked " + child);
}

std::string value_or_unknown(const Task &task, const std::vector<int> &state, int var_id) {
    if (var_id < 0) {
        return "";
    }
    return known_value_string(task, state, var_id);
}

std::string asked_status(const Task &task, const std::vector<int> &state, const std::string &child) {
    return value_or_unknown(task, state, asked_var_id(task, child));
}

bool self_evidence_is_sufficient(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent) {
    bool all_visible_muddy_answered_no = true;
    bool all_visible_muddy_asked = true;
    bool any_visible_muddy_answered_yes = false;

    for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
        const Variable &candidate = task.variables[var_id];
        if (candidate.schema != "muddy" || candidate.arguments.size() != 1) {
            continue;
        }

        const std::string &child = candidate.arguments[0];
        if (child == agent || known_value_string(task, state, var_id) != "t") {
            continue;
        }

        const std::string status = asked_status(task, state, child);
        if (status == "yes") {
            all_visible_muddy_answered_no = false;
            any_visible_muddy_answered_yes = true;
        } else if (status == "no") {
            // Still compatible with the all-no evidence case.
        } else {
            all_visible_muddy_answered_no = false;
            all_visible_muddy_asked = false;
        }
    }

    return all_visible_muddy_answered_no ||
           (all_visible_muddy_asked && any_visible_muddy_answered_yes);
}

std::vector<int> observe(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent) {
    std::vector<int> observed = state;

    for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
        const Variable &var = task.variables[var_id];
        if (var.schema == "asked") {
            observed[var_id] = state[var_id];
            continue;
        }
        if (var.schema == "muddy") {
            if (var.arguments.size() != 1) {
                throw std::runtime_error("muddy observation expects exactly one argument");
            }
            const std::string &target = var.arguments[0];
            if (target != agent) {
                observed[var_id] = state[var_id];
            } else if (self_evidence_is_sufficient(task, state, agent) && state[var_id] >= 0) {
                observed[var_id] = state[var_id];
            } else {
                observed[var_id] = HAVENT_SEEN_VALUE;
            }
            continue;
        }
        throw std::runtime_error("converted_muddy_children observation does not know schema: " + var.schema);
    }

    return observed;
}

const ObservationModelRegistration registration("converted_muddy_children", observe);

}  // namespace
