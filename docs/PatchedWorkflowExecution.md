# CloudReactorAPIClient::PatchedWorkflowExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **workflow** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **status** | [**WorkflowExecutionStatus**](WorkflowExecutionStatus.md) |  | [optional] |
| **run_reason** | [**WorkflowExecutionRunReason**](WorkflowExecutionRunReason.md) |  | [optional] |
| **started_at** | **Time** |  | [optional][readonly] |
| **started_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **finished_at** | **Time** |  | [optional] |
| **last_heartbeat_at** | **Time** |  | [optional] |
| **stop_reason** | [**WorkflowExecutionStopReason**](WorkflowExecutionStopReason.md) |  | [optional] |
| **marked_done_at** | **Time** |  | [optional] |
| **marked_done_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **kill_started_at** | **Time** |  | [optional] |
| **killed_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **kill_finished_at** | **Time** |  | [optional] |
| **kill_error_code** | **Integer** |  | [optional] |
| **failed_attempts** | **Integer** |  | [optional] |
| **timed_out_attempts** | **Integer** |  | [optional] |
| **workflow_snapshot** | **Hash&lt;String, Object&gt;** |  | [optional][readonly] |
| **workflow_task_instance_executions** | [**Array&lt;WorkflowTaskInstanceExecution&gt;**](WorkflowTaskInstanceExecution.md) |  | [optional][readonly] |
| **workflow_transition_evaluations** | [**Array&lt;WorkflowTransitionEvaluation&gt;**](WorkflowTransitionEvaluation.md) |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::PatchedWorkflowExecution.new(
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

