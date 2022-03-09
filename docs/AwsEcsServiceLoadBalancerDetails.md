# CloudReactorAPIClient::AwsEcsServiceLoadBalancerDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_group_arn** | **String** |  |  |
| **container_name** | **String** |  | [optional] |
| **container_port** | **Integer** |  |  |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::AwsEcsServiceLoadBalancerDetails.new(
  target_group_arn: null,
  container_name: null,
  container_port: null
)
```

