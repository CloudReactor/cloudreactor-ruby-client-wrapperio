# CloudReactorAPIClient::AwsEcsExecutionMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional][readonly] |
| **task_definition_arn** | **String** |  | [optional] |
| **task_definition_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **allocated_cpu_units** | **Integer** |  | [optional] |
| **allocated_memory_mb** | **Integer** |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** |  |  |
| **subnets** | **Array&lt;String&gt;** |  | [optional] |
| **subnet_infrastructure_website_urls** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **security_groups** | **Array&lt;String&gt;** |  | [optional] |
| **security_group_infrastructure_website_urls** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **assign_public_ip** | **Boolean** |  | [optional] |
| **task_arn** | **String** |  | [optional] |
| **launch_type** | [**AwsEcsLaunchType**](AwsEcsLaunchType.md) |  | [optional] |
| **cluster_arn** | **String** |  | [optional] |
| **cluster_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **execution_role** | **String** |  | [optional] |
| **execution_role_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **task_role** | **String** |  | [optional] |
| **task_role_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **platform_version** | **String** |  | [optional] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::AwsEcsExecutionMethod.new(
  type: null,
  task_definition_arn: null,
  task_definition_infrastructure_website_url: null,
  allocated_cpu_units: null,
  allocated_memory_mb: null,
  tags: null,
  subnets: null,
  subnet_infrastructure_website_urls: null,
  security_groups: null,
  security_group_infrastructure_website_urls: null,
  assign_public_ip: null,
  task_arn: null,
  launch_type: null,
  cluster_arn: null,
  cluster_infrastructure_website_url: null,
  execution_role: null,
  execution_role_infrastructure_website_url: null,
  task_role: null,
  task_role_infrastructure_website_url: null,
  platform_version: null
)
```

