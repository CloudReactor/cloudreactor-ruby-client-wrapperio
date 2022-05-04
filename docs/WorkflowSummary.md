# CloudReactorAPIClient::WorkflowSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **schedule** | **String** |  | [optional] |
| **max_concurrency** | **Integer** |  | [optional] |
| **max_age_seconds** | **Integer** |  | [optional] |
| **default_max_retries** | **Integer** |  | [optional] |
| **latest_workflow_execution** | [**WorkflowExecutionSummary**](WorkflowExecutionSummary.md) |  | [optional][readonly] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [optional][readonly] |
| **run_environment** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::WorkflowSummary.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  dashboard_url: null,
  schedule: null,
  max_concurrency: null,
  max_age_seconds: null,
  default_max_retries: null,
  latest_workflow_execution: null,
  created_by_user: null,
  created_by_group: null,
  run_environment: null,
  enabled: null,
  created_at: null,
  updated_at: null
)
```

