# CloudReactorAPIClient::EmailNotificationProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [readonly] |
| **uuid** | **String** |  | [readonly] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [readonly] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [readonly] |
| **run_environment** | [**NameAndUuid**](NameAndUuid.md) |  | [optional] |
| **created_at** | **Time** |  | [readonly] |
| **updated_at** | **Time** |  | [readonly] |
| **to_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **cc_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **bcc_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **subject_template** | **String** |  | [optional] |
| **body_template** | **String** |  | [optional] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::EmailNotificationProfile.new(
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

