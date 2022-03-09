# CloudReactorAPIClient::PatchedWorkflowTaskInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **workflow** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **task** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **start_transition_condition** | [**StartTransitionConditionEnum**](StartTransitionConditionEnum.md) |  | [optional] |
| **max_complete_executions** | **Integer** |  | [optional] |
| **should_eval_transitions_after_first_execution** | **Boolean** |  | [optional] |
| **condition_count_threshold** | **Integer** |  | [optional] |
| **condition_ratio_threshold** | **Float** |  | [optional] |
| **max_age_seconds** | **Integer** |  | [optional] |
| **default_max_retries** | **Integer** |  | [optional] |
| **failure_behavior** | [**FailureBehaviorEnum**](FailureBehaviorEnum.md) |  | [optional] |
| **allow_workflow_execution_after_failure** | **Boolean** |  | [optional] |
| **timeout_behavior** | [**TimeoutBehaviorEnum**](TimeoutBehaviorEnum.md) |  | [optional] |
| **allow_workflow_execution_after_timeout** | **Boolean** |  | [optional] |
| **environment_variables_overrides** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **allocated_cpu_units** | **Integer** |  | [optional] |
| **allocated_memory_mb** | **Integer** |  | [optional] |
| **use_task_alert_methods** | **Boolean** |  | [optional] |
| **ui_color** | **String** |  | [optional] |
| **ui_icon_type** | **String** |  | [optional] |
| **ui_scale** | **Float** |  | [optional] |
| **ui_center_margin_top** | **Float** |  | [optional] |
| **ui_center_margin_left** | **Float** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::PatchedWorkflowTaskInstance.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  workflow: null,
  task: null,
  start_transition_condition: null,
  max_complete_executions: null,
  should_eval_transitions_after_first_execution: null,
  condition_count_threshold: null,
  condition_ratio_threshold: null,
  max_age_seconds: null,
  default_max_retries: null,
  failure_behavior: null,
  allow_workflow_execution_after_failure: null,
  timeout_behavior: null,
  allow_workflow_execution_after_timeout: null,
  environment_variables_overrides: null,
  allocated_cpu_units: null,
  allocated_memory_mb: null,
  use_task_alert_methods: null,
  ui_color: null,
  ui_icon_type: null,
  ui_scale: null,
  ui_center_margin_top: null,
  ui_center_margin_left: null,
  created_at: null,
  updated_at: null
)
```

