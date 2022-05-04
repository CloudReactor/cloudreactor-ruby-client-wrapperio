# CloudReactorAPIClient::TaskExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **infrastructure_website_url** | **String** |  | [optional][readonly] |
| **task** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **task_version_number** | **Integer** |  | [optional] |
| **task_version_text** | **String** |  | [optional] |
| **task_version_signature** | **String** |  | [optional] |
| **commit_url** | **String** |  | [optional][readonly] |
| **other_instance_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **environment_variables_overrides** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **execution_method** | [**AwsEcsExecutionMethod**](AwsEcsExecutionMethod.md) |  | [optional][readonly] |
| **status** | [**TaskExecutionStatus**](TaskExecutionStatus.md) |  |  |
| **started_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **started_at** | **Time** |  | [optional][readonly] |
| **finished_at** | **Time** |  | [optional] |
| **marked_done_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **marked_done_at** | **Time** |  | [optional] |
| **marked_outdated_at** | **Time** |  | [optional] |
| **killed_by** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **kill_started_at** | **Time** |  | [optional] |
| **kill_finished_at** | **Time** |  | [optional] |
| **kill_error_code** | **Integer** |  | [optional] |
| **stop_reason** | [**StopReasonEnum**](StopReasonEnum.md) |  | [optional] |
| **last_heartbeat_at** | **Time** |  | [optional] |
| **failed_attempts** | **Integer** |  | [optional] |
| **timed_out_attempts** | **Integer** |  | [optional] |
| **exit_code** | **Integer** |  | [optional] |
| **last_status_message** | **String** |  | [optional] |
| **error_count** | **Integer** |  | [optional] |
| **skipped_count** | **Integer** |  | [optional] |
| **expected_count** | **Integer** |  | [optional] |
| **success_count** | **Integer** |  | [optional] |
| **other_runtime_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **current_cpu_units** | **Integer** |  | [optional] |
| **mean_cpu_units** | **Integer** |  | [optional] |
| **max_cpu_units** | **Integer** |  | [optional] |
| **current_memory_mb** | **Integer** |  | [optional] |
| **mean_memory_mb** | **Integer** |  | [optional] |
| **max_memory_mb** | **Integer** |  | [optional] |
| **wrapper_version** | **String** |  | [optional] |
| **wrapper_log_level** | **String** |  | [optional] |
| **deployment** | **String** |  | [optional] |
| **process_command** | **String** |  | [optional] |
| **is_service** | **Boolean** |  | [optional] |
| **task_max_concurrency** | **Integer** |  | [optional] |
| **max_conflicting_age_seconds** | **Integer** |  | [optional] |
| **prevent_offline_execution** | **Boolean** |  | [optional] |
| **process_timeout_seconds** | **Integer** |  | [optional] |
| **process_termination_grace_period_seconds** | **Integer** |  | [optional] |
| **process_max_retries** | **Integer** |  | [optional] |
| **process_retry_delay_seconds** | **Integer** |  | [optional] |
| **schedule** | **String** |  | [optional] |
| **heartbeat_interval_seconds** | **Integer** |  | [optional] |
| **workflow_task_instance_execution** | [**WorkflowTaskInstanceExecutionBase**](WorkflowTaskInstanceExecutionBase.md) |  | [optional][readonly] |
| **api_base_url** | **String** |  | [optional] |
| **api_request_timeout_seconds** | **Integer** |  | [optional] |
| **api_retry_delay_seconds** | **Integer** |  | [optional] |
| **api_resume_delay_seconds** | **Integer** |  | [optional] |
| **api_error_timeout_seconds** | **Integer** |  | [optional] |
| **api_task_execution_creation_error_timeout_seconds** | **Integer** |  | [optional] |
| **api_task_execution_creation_conflict_timeout_seconds** | **Integer** |  | [optional] |
| **api_task_execution_creation_conflict_retry_delay_seconds** | **Integer** |  | [optional] |
| **api_final_update_timeout_seconds** | **Integer** |  | [optional] |
| **status_update_interval_seconds** | **Integer** |  | [optional] |
| **status_update_port** | **Integer** |  | [optional] |
| **status_update_message_max_bytes** | **Integer** |  | [optional] |
| **debug_log_tail** | **String** |  | [optional] |
| **error_log_tail** | **String** |  | [optional] |
| **embedded_mode** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::TaskExecution.new(
  url: null,
  uuid: null,
  dashboard_url: null,
  infrastructure_website_url: null,
  task: null,
  task_version_number: null,
  task_version_text: null,
  task_version_signature: null,
  commit_url: null,
  other_instance_metadata: null,
  hostname: null,
  environment_variables_overrides: null,
  execution_method: null,
  status: null,
  started_by: null,
  started_at: null,
  finished_at: null,
  marked_done_by: null,
  marked_done_at: null,
  marked_outdated_at: null,
  killed_by: null,
  kill_started_at: null,
  kill_finished_at: null,
  kill_error_code: null,
  stop_reason: null,
  last_heartbeat_at: null,
  failed_attempts: null,
  timed_out_attempts: null,
  exit_code: null,
  last_status_message: null,
  error_count: null,
  skipped_count: null,
  expected_count: null,
  success_count: null,
  other_runtime_metadata: null,
  current_cpu_units: null,
  mean_cpu_units: null,
  max_cpu_units: null,
  current_memory_mb: null,
  mean_memory_mb: null,
  max_memory_mb: null,
  wrapper_version: null,
  wrapper_log_level: null,
  deployment: null,
  process_command: null,
  is_service: null,
  task_max_concurrency: null,
  max_conflicting_age_seconds: null,
  prevent_offline_execution: null,
  process_timeout_seconds: null,
  process_termination_grace_period_seconds: null,
  process_max_retries: null,
  process_retry_delay_seconds: null,
  schedule: null,
  heartbeat_interval_seconds: null,
  workflow_task_instance_execution: null,
  api_base_url: null,
  api_request_timeout_seconds: null,
  api_retry_delay_seconds: null,
  api_resume_delay_seconds: null,
  api_error_timeout_seconds: null,
  api_task_execution_creation_error_timeout_seconds: null,
  api_task_execution_creation_conflict_timeout_seconds: null,
  api_task_execution_creation_conflict_retry_delay_seconds: null,
  api_final_update_timeout_seconds: null,
  status_update_interval_seconds: null,
  status_update_port: null,
  status_update_message_max_bytes: null,
  debug_log_tail: null,
  error_log_tail: null,
  embedded_mode: null,
  created_at: null,
  updated_at: null
)
```

