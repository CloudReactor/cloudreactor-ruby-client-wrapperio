# CloudReactorAPIClient::WorkflowTransition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **description** | **String** |  | [optional] |
| **from_workflow_task_instance** | [**NameAndUuid**](NameAndUuid.md) |  |  |
| **to_workflow_task_instance** | [**NameAndUuid**](NameAndUuid.md) |  |  |
| **rule_type** | [**RuleTypeEnum**](RuleTypeEnum.md) |  |  |
| **exit_codes** | **Array&lt;String&gt;** |  | [optional] |
| **threshold_property** | [**ThresholdPropertyEnum**](ThresholdPropertyEnum.md) |  | [optional] |
| **custom_expression** | **String** |  | [optional] |
| **priority** | **Integer** |  | [optional] |
| **ui_color** | **String** |  | [optional] |
| **ui_line_style** | **String** |  | [optional] |
| **ui_scale** | **Float** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::WorkflowTransition.new(
  url: null,
  uuid: null,
  description: null,
  from_workflow_task_instance: null,
  to_workflow_task_instance: null,
  rule_type: null,
  exit_codes: null,
  threshold_property: null,
  custom_expression: null,
  priority: null,
  ui_color: null,
  ui_line_style: null,
  ui_scale: null,
  created_at: null,
  updated_at: null
)
```

