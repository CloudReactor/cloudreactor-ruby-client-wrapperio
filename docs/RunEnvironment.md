# CloudReactorAPIClient::RunEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional][readonly] |
| **uuid** | **String** |  | [optional][readonly] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional][readonly] |
| **created_by_user** | **String** | Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. | [optional][readonly] |
| **created_by_group** | [**Group**](Group.md) |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **aws_account_id** | **String** |  | [optional] |
| **aws_default_region** | **String** |  | [optional] |
| **aws_access_key** | **String** |  | [optional] |
| **aws_assumed_role_external_id** | **String** |  | [optional] |
| **aws_events_role_arn** | **String** |  | [optional] |
| **aws_workflow_starter_lambda_arn** | **String** |  | [optional] |
| **aws_workflow_starter_access_key** | **String** |  | [optional] |
| **default_alert_methods** | [**Array&lt;NameAndUuid&gt;**](NameAndUuid.md) |  | [optional] |
| **execution_method_capabilities** | [**Array&lt;AwsEcsRunEnvironmentExecutionMethodCapability&gt;**](AwsEcsRunEnvironmentExecutionMethodCapability.md) |  | [optional][readonly] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::RunEnvironment.new(
  url: null,
  uuid: null,
  name: null,
  description: null,
  dashboard_url: null,
  created_by_user: null,
  created_by_group: null,
  created_at: null,
  updated_at: null,
  aws_account_id: null,
  aws_default_region: null,
  aws_access_key: null,
  aws_assumed_role_external_id: null,
  aws_events_role_arn: null,
  aws_workflow_starter_lambda_arn: null,
  aws_workflow_starter_access_key: null,
  default_alert_methods: null,
  execution_method_capabilities: null
)
```

