#pragma once

#include "jpm/task.hpp"
#include "jpm/visibility.hpp"

#include <string>
#include <vector>

using ObservationEvaluator = std::vector<int> (*)(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent);

class ObservationModelRegistration {
public:
    ObservationModelRegistration(const std::string &model, ObservationEvaluator evaluator);
};

std::string detect_observation_model_name(const Task &task);

std::vector<int> observe_state(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent);

std::vector<int> project_visible_state(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    VisibilityEvaluator visible);
