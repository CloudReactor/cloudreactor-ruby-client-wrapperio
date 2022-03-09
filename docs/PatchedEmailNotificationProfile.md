# CloudReactorAPIClient::PatchedEmailNotificationProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [optional][readonly] |
| **run_environment** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **to_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **cc_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **bcc_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **subject_template** | **String** |  | [optional] |
| **body_template** | **String** |  | [optional] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::PatchedEmailNotificationProfile.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  dashboard_url: null,
  created_by_user: null,
  created_by_group: null,
  run_environment: null,
  created_at: null,
  updated_at: null,
  to_addresses: null,
  cc_addresses: null,
  bcc_addresses: null,
  subject_template: null,
  body_template: null
)
```

