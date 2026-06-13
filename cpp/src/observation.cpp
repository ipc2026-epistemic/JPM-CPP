#include "jpm/observation.hpp"

#include <stdexcept>
#include <unordered_map>

namespace {

std::unordered_map<std::string, ObservationEvaluator> &observation_registry() {
    static std::unordered_map<std::string, ObservationEvaluator> registry;
    return registry;
}

}  // namespace

ObservationModelRegistration::ObservationModelRegistration(
    const std::string &model,
    ObservationEvaluator evaluator) {
    observation_registry()[model] = evaluator;
}

std::string detect_observation_model_name(const Task &task) {
    return detect_visibility_model_name(task);
}

std::vector<int> project_visible_state(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    VisibilityEvaluator visible) {
    std::vector<int> observed = state;
    for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
        if (!visible(task, state, agent, task.variables[var_id])) {
            observed[var_id] = UNSEEN_VALUE;
        }
    }
    return observed;
}

std::vector<int> observe_state(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent) {
    if (task.observation_model == ALL_VISIBLE_MODEL) {
        return state;
    }
    auto it = observation_registry().find(task.observation_model);
    if (it != observation_registry().end()) {
        std::vector<int> observed = it->second(task, state, agent);
        if (observed.size() != state.size()) {
            throw std::runtime_error(
                "observation model '" + task.observation_model +
                "' returned a state with the wrong size");
        }
        return observed;
    }

    // Legacy compatibility for domains that still register only a visibility model.
    std::vector<int> observed = state;
    for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
        if (!is_visible(task, state, agent, var_id)) {
            observed[var_id] = UNSEEN_VALUE;
        }
    }
    return observed;
}
