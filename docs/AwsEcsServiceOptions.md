# CloudReactorAPIClient::AwsEcsServiceOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **load_balancers** | [**Array&lt;AwsEcsServiceLoadBalancerDetails&gt;**](AwsEcsServiceLoadBalancerDetails.md) |  | [optional][readonly] |
| **health_check_grace_period_seconds** | **Integer** |  | [optional] |
| **force_new_deployment** | **Boolean** |  | [optional] |
| **deploy_minimum_healthy_percent** | **Integer** |  | [optional] |
| **deploy_maximum_percent** | **Integer** |  | [optional] |
| **deploy_enable_circuit_breaker** | **Boolean** |  | [optional] |
| **deploy_rollback_on_failure** | **Boolean** |  | [optional] |
| **enable_ecs_managed_tags** | **Boolean** |  | [optional] |
| **propagate_tags** | [**PropagateTagsEnum**](PropagateTagsEnum.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::AwsEcsServiceOptions.new(
  load_balancers: null,
  health_check_grace_period_seconds: null,
  force_new_deployment: null,
  deploy_minimum_healthy_percent: null,
  deploy_maximum_percent: null,
  deploy_enable_circuit_breaker: null,
  deploy_rollback_on_failure: null,
  enable_ecs_managed_tags: null,
  propagate_tags: null,
  tags: null
)
```

