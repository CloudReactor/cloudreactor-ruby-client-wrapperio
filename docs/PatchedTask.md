# CloudReactorAPIClient::PatchedTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **infrastructure_website_url** | **String** |  | [optional][readonly] |
| **max_manual_start_delay_before_alert_seconds** | **Integer** |  | [optional] |
| **max_manual_start_delay_before_abandonment_seconds** | **Integer** |  | [optional] |
| **heartbeat_interval_seconds** | **Integer** |  | [optional] |
| **max_heartbeat_lateness_before_alert_seconds** | **Integer** |  | [optional] |
| **max_heartbeat_lateness_before_abandonment_seconds** | **Integer** |  | [optional] |
| **schedule** | **String** |  | [optional] |
| **scheduled_instance_count** | **Integer** |  | [optional] |
| **is_service** | **Boolean** |  | [optional][readonly] |
| **service_instance_count** | **Integer** |  | [optional] |
| **min_service_instance_count** | **Integer** |  | [optional] |
| **max_concurrency** | **Integer** |  | [optional] |
| **max_age_seconds** | **Integer** |  | [optional] |
| **default_max_retries** | **Integer** |  | [optional] |
| **project_url** | **String** |  | [optional] |
| **log_query** | **String** |  | [optional] |
| **logs_url** | **String** |  | [optional][readonly] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] |
| **run_environment** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **execution_method_capability** | [**ExecutionMethodCapability**](ExecutionMethodCapability.md) |  | [optional][readonly] |
| **alert_methods** | [**Array&lt;NameAndUuid&gt;**](NameAndUuid.md) |  | [optional] |
| **other_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **latest_task_execution** | [**TaskExecution**](TaskExecution.md) |  | [optional][readonly] |
| **current_service_info** | [**CurrentServiceInfo**](CurrentServiceInfo.md) |  | [optional][readonly] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [optional][readonly] |
| **was_auto_created** | **Boolean** |  | [optional] |
| **passive** | **Boolean** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::PatchedTask.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  dashboard_url: null,
  infrastructure_website_url: null,
  max_manual_start_delay_before_alert_seconds: null,
  max_manual_start_delay_before_abandonment_seconds: null,
  heartbeat_interval_seconds: null,
  max_heartbeat_lateness_before_alert_seconds: null,
  max_heartbeat_lateness_before_abandonment_seconds: null,
  schedule: null,
  scheduled_instance_count: null,
  is_service: null,
  service_instance_count: null,
  min_service_instance_count: null,
  max_concurrency: null,
  max_age_seconds: null,
  default_max_retries: null,
  project_url: null,
  log_query: null,
  logs_url: null,
  links: null,
  run_environment: null,
  execution_method_capability: null,
  alert_methods: null,
  other_metadata: null,
  latest_task_execution: null,
  current_service_info: null,
  created_by_user: null,
  created_by_group: null,
  was_auto_created: null,
  passive: null,
  enabled: null,
  created_at: null,
  updated_at: null
)
```

