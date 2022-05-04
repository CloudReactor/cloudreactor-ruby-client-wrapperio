# CloudReactorAPIClient::AwsEcsExecutionMethodCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_definition_arn** | **String** |  | [optional] |
| **task_definition_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **allocated_cpu_units** | **Integer** |  | [optional] |
| **allocated_memory_mb** | **Integer** |  | [optional] |
| **type** | **String** |  | [optional][readonly] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **tags** | **Hash&lt;String, String&gt;** |  |  |
| **default_subnets** | **Array&lt;String&gt;** |  | [optional] |
| **default_subnet_infrastructure_website_urls** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **default_launch_type** | [**AwsEcsLaunchType**](AwsEcsLaunchType.md) |  | [optional] |
| **supported_launch_types** | [**Array&lt;AwsEcsLaunchType&gt;**](AwsEcsLaunchType.md) |  | [optional] |
| **default_cluster_arn** | **String** |  | [optional] |
| **default_cluster_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **default_security_groups** | **Array&lt;String&gt;** |  | [optional] |
| **default_security_group_infrastructure_website_urls** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **default_assign_public_ip** | **Boolean** |  | [optional] |
| **default_execution_role** | **String** |  | [optional] |
| **default_execution_role_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **default_task_role** | **String** |  | [optional] |
| **default_task_role_infrastructure_website_url** | **String** |  | [optional][readonly] |
| **default_platform_version** | **String** |  | [optional] |
| **main_container_name** | **String** |  | [optional] |
| **service_options** | [**AwsEcsServiceOptions**](AwsEcsServiceOptions.md) |  | [optional] |

## Example

```ruby
require 'cloudreactor_api_client'

instance = CloudReactorAPIClient::AwsEcsExecutionMethodCapability.new(
  task_definition_arn: null,
  task_definition_infrastructure_website_url: null,
  allocated_cpu_units: null,
  allocated_memory_mb: null,
  type: null,
  capabilities: null,
  tags: null,
  default_subnets: null,
  default_subnet_infrastructure_website_urls: null,
  default_launch_type: null,
  supported_launch_types: null,
  default_cluster_arn: null,
  default_cluster_infrastructure_website_url: null,
  default_security_groups: null,
  default_security_group_infrastructure_website_urls: null,
  default_assign_public_ip: null,
  default_execution_role: null,
  default_execution_role_infrastructure_website_url: null,
  default_task_role: null,
  default_task_role_infrastructure_website_url: null,
  default_platform_version: null,
  main_container_name: null,
  service_options: null
)
```

