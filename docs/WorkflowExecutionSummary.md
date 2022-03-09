# CloudReactorAPIClient::WorkflowExecutionSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [readonly] |
| **uuid** | **String** |  | [readonly] |
| **dashboard_url** | **String** |  | [readonly] |
| **status** | [**WorkflowExecutionStatus**](WorkflowExecutionStatus.md) |  |  |
| **run_reason** | **Integer** |  | [optional] |
| **started_at** | **Time** |  | [readonly] |
| **finished_at** | **Time** |  | [optional] |
| **last_heartbeat_at** | **Time** |  | [optional] |
| **stop_reason** | **Integer** |  | [optional] |
| **marked_done_at** | **Time** |  | [optional] |
| **kill_started_at** | **Time** |  | [optional] |
| **kill_finished_at** | **Time** |  | [optional] |
| **kill_error_code** | **Integer** |  | [optional] |
| **failed_attempts** | **Integer** |  | [optional] |
| **timed_out_attempts** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [readonly] |
| **updated_at** | **Time** |  | [readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::WorkflowExecutionSummary.new(
  url: null,
  uuid: null,
  dashboard_url: null,
  status: null,
  run_reason: null,
  started_at: null,
  finished_at: null,
  last_heartbeat_at: null,
  stop_reason: null,
  marked_done_at: null,
  kill_started_at: null,
  kill_finished_at: null,
  kill_error_code: null,
  failed_attempts: null,
  timed_out_attempts: null,
  created_at: null,
  updated_at: null
)
```

