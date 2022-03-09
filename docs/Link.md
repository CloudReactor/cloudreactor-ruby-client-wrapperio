# CloudReactorAPIClient::Link

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **name** | **String** |  |  |
| **link_url_template** | **String** |  |  |
| **link_url** | **String** |  | [readonly] |
| **icon_url** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **rank** | **Integer** |  |  |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::Link.new(
  uuid: null,
  name: null,
  link_url_template: null,
  link_url: null,
  icon_url: null,
  description: null,
  rank: null
)
```

