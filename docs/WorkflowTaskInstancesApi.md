# CloudReactorAPIClient::WorkflowTaskInstancesApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflow_task_instances_create**](WorkflowTaskInstancesApi.md#workflow_task_instances_create) | **POST** /workflow_task_instances/ |  |
| [**workflow_task_instances_destroy**](WorkflowTaskInstancesApi.md#workflow_task_instances_destroy) | **DELETE** /workflow_task_instances/{uuid}/ |  |
| [**workflow_task_instances_list**](WorkflowTaskInstancesApi.md#workflow_task_instances_list) | **GET** /workflow_task_instances/ |  |
| [**workflow_task_instances_partial_update**](WorkflowTaskInstancesApi.md#workflow_task_instances_partial_update) | **PATCH** /workflow_task_instances/{uuid}/ |  |
| [**workflow_task_instances_retrieve**](WorkflowTaskInstancesApi.md#workflow_task_instances_retrieve) | **GET** /workflow_task_instances/{uuid}/ |  |
| [**workflow_task_instances_update**](WorkflowTaskInstancesApi.md#workflow_task_instances_update) | **PUT** /workflow_task_instances/{uuid}/ |  |


## workflow_task_instances_create

> <WorkflowTaskInstance> workflow_task_instances_create(workflow_task_instance)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTaskInstancesApi.new
workflow_task_instance = CloudReactorAPIClient::WorkflowTaskInstance.new({name: 'name_example', workflow: CloudReactorAPIClient::NameAndUuid.new, task: CloudReactorAPIClient::NameAndUuid.new}) # WorkflowTaskInstance | 

begin
  
  result = api_instance.workflow_task_instances_create(workflow_task_instance)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_create: #{e}"
end
```

#### Using the workflow_task_instances_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskInstance>, Integer, Hash)> workflow_task_instances_create_with_http_info(workflow_task_instance)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_task_instances_create_with_http_info(workflow_task_instance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskInstance>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_task_instance** | [**WorkflowTaskInstance**](WorkflowTaskInstance.md) |  |  |

### Return type

[**WorkflowTaskInstance**](WorkflowTaskInstance.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_task_instances_destroy

> workflow_task_instances_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTaskInstancesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.workflow_task_instances_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_destroy: #{e}"
end
```

#### Using the workflow_task_instances_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_task_instances_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_task_instances_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## workflow_task_instances_list

> <PaginatedWorkflowTaskInstanceList> workflow_task_instances_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTaskInstancesApi.new
opts = {
  description: 'description_example', # String | 
  limit: 56, # Integer | Number of results to return per page.
  name: 'name_example', # String | 
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  search: 'search_example', # String | A search term.
  task__name: 'task__name_example', # String | 
  task__uuid: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  workflow__created_by_group__id: 56, # Integer | 
  workflow__run_environment__uuid: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  workflow__uuid: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  
  result = api_instance.workflow_task_instances_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_list: #{e}"
end
```

#### Using the workflow_task_instances_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkflowTaskInstanceList>, Integer, Hash)> workflow_task_instances_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_task_instances_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkflowTaskInstanceList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **name** | **String** |  | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |
| **ordering** | **String** | Which field to use when ordering the results. | [optional] |
| **search** | **String** | A search term. | [optional] |
| **task__name** | **String** |  | [optional] |
| **task__uuid** | **String** |  | [optional] |
| **workflow__created_by_group__id** | **Integer** |  | [optional] |
| **workflow__run_environment__uuid** | **String** |  | [optional] |
| **workflow__uuid** | **String** |  | [optional] |

### Return type

[**PaginatedWorkflowTaskInstanceList**](PaginatedWorkflowTaskInstanceList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_task_instances_partial_update

> <WorkflowTaskInstance> workflow_task_instances_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTaskInstancesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_workflow_task_instance: CloudReactorAPIClient::PatchedWorkflowTaskInstance.new # PatchedWorkflowTaskInstance | 
}

begin
  
  result = api_instance.workflow_task_instances_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_partial_update: #{e}"
end
```

#### Using the workflow_task_instances_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskInstance>, Integer, Hash)> workflow_task_instances_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_task_instances_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskInstance>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_workflow_task_instance** | [**PatchedWorkflowTaskInstance**](PatchedWorkflowTaskInstance.md) |  | [optional] |

### Return type

[**WorkflowTaskInstance**](WorkflowTaskInstance.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_task_instances_retrieve

> <WorkflowTaskInstance> workflow_task_instances_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTaskInstancesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.workflow_task_instances_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_retrieve: #{e}"
end
```

#### Using the workflow_task_instances_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskInstance>, Integer, Hash)> workflow_task_instances_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_task_instances_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskInstance>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**WorkflowTaskInstance**](WorkflowTaskInstance.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_task_instances_update

> <WorkflowTaskInstance> workflow_task_instances_update(uuid, workflow_task_instance)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTaskInstancesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow_task_instance = CloudReactorAPIClient::WorkflowTaskInstance.new({name: 'name_example', workflow: CloudReactorAPIClient::NameAndUuid.new, task: CloudReactorAPIClient::NameAndUuid.new}) # WorkflowTaskInstance | 

begin
  
  result = api_instance.workflow_task_instances_update(uuid, workflow_task_instance)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_update: #{e}"
end
```

#### Using the workflow_task_instances_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskInstance>, Integer, Hash)> workflow_task_instances_update_with_http_info(uuid, workflow_task_instance)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_task_instances_update_with_http_info(uuid, workflow_task_instance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskInstance>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTaskInstancesApi->workflow_task_instances_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow_task_instance** | [**WorkflowTaskInstance**](WorkflowTaskInstance.md) |  |  |

### Return type

[**WorkflowTaskInstance**](WorkflowTaskInstance.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

