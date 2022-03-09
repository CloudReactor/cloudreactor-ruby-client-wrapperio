# CloudReactorAPIClient::WorkflowTaskInstanceExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  | [readonly] |
| **workflow_execution** | [**NameAndUuid**](NameAndUuid.md) |  | [readonly] |
| **workflow_task_instance** | [**NameAndUuid**](NameAndUuid.md) |  | [readonly] |
| **task_execution** | [**TaskExecution**](TaskExecution.md) |  | [readonly] |
| **is_latest** | **Boolean** |  | [readonly] |
| **created_at** | **Time** |  | [readonly] |

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

