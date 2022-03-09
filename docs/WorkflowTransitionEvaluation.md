# CloudReactorAPIClient::WorkflowTransitionEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  | [readonly] |
| **result** | **Boolean** |  | [readonly] |
| **workflow_transition** | [**NameAndUuid**](NameAndUuid.md) |  | [readonly] |
| **workflow_execution** | [**NameAndUuid**](NameAndUuid.md) |  | [readonly] |
| **from_workflow_task_instance_execution** | **String** |  | [readonly] |
| **evaluated_at** | **Time** |  | [readonly] |

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

