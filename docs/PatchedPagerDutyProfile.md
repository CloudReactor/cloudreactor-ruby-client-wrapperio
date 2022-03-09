# CloudReactorAPIClient::PatchedPagerDutyProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **integration_key** | **String** |  | [optional] |
| **default_event_severity** | [**NotificationSeverity**](NotificationSeverity.md) |  | [optional] |
| **default_event_component_template** | **String** |  | [optional] |
| **default_event_group_template** | **String** |  | [optional] |
| **default_event_class_template** | **String** |  | [optional] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [optional][readonly] |
| **run_environment** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::PatchedPagerDutyProfile.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  dashboard_url: null,
  integration_key: null,
  default_event_severity: null,
  default_event_component_template: null,
  default_event_group_template: null,
  default_event_class_template: null,
  created_by_user: null,
  created_by_group: null,
  run_environment: null,
  created_at: null,
  updated_at: null
)
```

