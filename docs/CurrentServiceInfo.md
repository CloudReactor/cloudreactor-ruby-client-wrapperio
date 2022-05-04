# CloudReactorAPIClient::CurrentServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional][readonly] |
| **service_arn** | **String** |  | [optional][readonly] |
| **service_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **service_arn_updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::CurrentServiceInfo.new(
  type: null,
  service_arn: null,
  service_infrastructure_website_url: null,
  service_arn_updated_at: null
)
```

