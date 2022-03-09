# CloudReactorAPIClient::WorkflowExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [readonly] |
| **uuid** | **String** |  | [readonly] |
| **dashboard_url** | **String** |  | [readonly] |
| **workflow** | [**NameAndUuid**](NameAndUuid.md) |  |  |
| **status** | [**WorkflowExecutionStatus**](WorkflowExecutionStatus.md) |  |  |
| **run_reason** | **Integer** |  | [optional] |
| **started_at** | **Time** |  | [readonly] |
| **started_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [readonly] |
| **finished_at** | **Time** |  | [optional] |
| **last_heartbeat_at** | **Time** |  | [optional] |
| **stop_reason** | **Integer** |  | [optional] |
| **marked_done_at** | **Time** |  | [optional] |
| **marked_done_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [readonly] |
| **kill_started_at** | **Time** |  | [optional] |
| **killed_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [readonly] |
| **kill_finished_at** | **Time** |  | [optional] |
| **kill_error_code** | **Integer** |  | [optional] |
| **failed_attempts** | **Integer** |  | [optional] |
| **timed_out_attempts** | **Integer** |  | [optional] |
| **workflow_snapshot** | **Hash&lt;String, Object&gt;** |  | [readonly] |
| **workflow_task_instance_executions** | [**Array&lt;WorkflowTaskInstanceExecution&gt;**](WorkflowTaskInstanceExecution.md) |  | [readonly] |
| **workflow_transition_evaluations** | [**Array&lt;WorkflowTransitionEvaluation&gt;**](WorkflowTransitionEvaluation.md) |  | [readonly] |
| **created_at** | **Time** |  | [readonly] |
| **updated_at** | **Time** |  | [readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::WorkflowExecution.new(
  url: null,
  uuid: null,
  dashboard_url: null,
  workflow: null,
  status: null,
  run_reason: null,
  started_at: null,
  started_by: null,
  finished_at: null,
  last_heartbeat_at: null,
  stop_reason: null,
  marked_done_at: null,
  marked_done_by: null,
  kill_started_at: null,
  killed_by: null,
  kill_finished_at: null,
  kill_error_code: null,
  failed_attempts: null,
  timed_out_attempts: null,
  workflow_snapshot: null,
  workflow_task_instance_executions: null,
  workflow_transition_evaluations: null,
  created_at: null,
  updated_at: null
)
```

