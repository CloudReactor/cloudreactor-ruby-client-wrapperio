# CloudReactorAPIClient::WorkflowTaskInstanceExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  | [optional][readonly] |
| **workflow_execution** | [**NameAndUuid**](NameAndUuid.md) |  | [optional][readonly] |
| **workflow_task_instance** | [**NameAndUuid**](NameAndUuid.md) |  | [optional][readonly] |
| **task_execution** | [**TaskExecution**](TaskExecution.md) |  | [optional][readonly] |
| **is_latest** | **Boolean** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::WorkflowTaskInstanceExecution.new(
  uuid: null,
  workflow_execution: null,
  workflow_task_instance: null,
  task_execution: null,
  is_latest: null,
  created_at: null
)
```

