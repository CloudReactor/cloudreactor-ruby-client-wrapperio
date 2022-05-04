# CloudReactorAPIClient::WorkflowTransitionEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  | [optional][readonly] |
| **result** | **Boolean** |  | [optional][readonly] |
| **workflow_transition** | [**NameAndUuid**](NameAndUuid.md) |  | [optional][readonly] |
| **workflow_execution** | [**NameAndUuid**](NameAndUuid.md) |  | [optional][readonly] |
| **from_workflow_task_instance_execution** | **String** |  | [optional][readonly] |
| **evaluated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::WorkflowTransitionEvaluation.new(
  uuid: null,
  result: null,
  workflow_transition: null,
  workflow_execution: null,
  from_workflow_task_instance_execution: null,
  evaluated_at: null
)
```

