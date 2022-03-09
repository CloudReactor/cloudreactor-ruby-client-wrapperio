# CloudReactorAPIClient::PatchedAlertMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **enabled** | **Boolean** |  | [optional] |
| **method_details** | **Hash&lt;String, Object&gt;** |  | [optional][readonly] |
| **notify_on_success** | **Boolean** |  | [optional] |
| **notify_on_failure** | **Boolean** |  | [optional] |
| **notify_on_timeout** | **Boolean** |  | [optional] |
| **error_severity_on_missing_execution** | [**NotificationSeverity**](NotificationSeverity.md) |  | [optional] |
| **error_severity_on_missing_heartbeat** | [**NotificationSeverity**](NotificationSeverity.md) |  | [optional] |
| **error_severity_on_service_down** | [**NotificationSeverity**](NotificationSeverity.md) |  | [optional] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [optional][readonly] |
| **run_environment** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::PatchedAlertMethod.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  dashboard_url: null,
  enabled: null,
  method_details: null,
  notify_on_success: null,
  notify_on_failure: null,
  notify_on_timeout: null,
  error_severity_on_missing_execution: null,
  error_severity_on_missing_heartbeat: null,
  error_severity_on_service_down: null,
  created_by_user: null,
  created_by_group: null,
  run_environment: null,
  created_at: null,
  updated_at: null
)
```

