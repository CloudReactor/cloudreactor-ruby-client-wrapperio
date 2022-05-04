# CloudReactorAPIClient::TaskExecutionsApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**task_executions_create**](TaskExecutionsApi.md#task_executions_create) | **POST** /task_executions/ |  |
| [**task_executions_destroy**](TaskExecutionsApi.md#task_executions_destroy) | **DELETE** /task_executions/{uuid}/ |  |
| [**task_executions_list**](TaskExecutionsApi.md#task_executions_list) | **GET** /task_executions/ |  |
| [**task_executions_partial_update**](TaskExecutionsApi.md#task_executions_partial_update) | **PATCH** /task_executions/{uuid}/ |  |
| [**task_executions_retrieve**](TaskExecutionsApi.md#task_executions_retrieve) | **GET** /task_executions/{uuid}/ |  |
| [**task_executions_update**](TaskExecutionsApi.md#task_executions_update) | **PUT** /task_executions/{uuid}/ |  |


## task_executions_create

> <TaskExecution> task_executions_create(task_execution)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TaskExecutionsApi.new
task_execution = CloudReactorAPIClient::TaskExecution.new({status: CloudReactorAPIClient::TaskExecutionStatus::RUNNING}) # TaskExecution | 

begin
  
  result = api_instance.task_executions_create(task_execution)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_create: #{e}"
end
```

#### Using the task_executions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskExecution>, Integer, Hash)> task_executions_create_with_http_info(task_execution)

```ruby
begin
  
  data, status_code, headers = api_instance.task_executions_create_with_http_info(task_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_execution** | [**TaskExecution**](TaskExecution.md) |  |  |

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## task_executions_destroy

> task_executions_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TaskExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.task_executions_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_destroy: #{e}"
end
```

#### Using the task_executions_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> task_executions_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.task_executions_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_destroy_with_http_info: #{e}"
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


## task_executions_list

> <PaginatedTaskExecutionList> task_executions_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TaskExecutionsApi.new
opts = {
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  search: 'search_example', # String | A search term.
  task__created_by_group__id: 56, # Integer | 
  task__uuid: 'task__uuid_example' # String | 
}

begin
  
  result = api_instance.task_executions_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_list: #{e}"
end
```

#### Using the task_executions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTaskExecutionList>, Integer, Hash)> task_executions_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.task_executions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTaskExecutionList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |
| **ordering** | **String** | Which field to use when ordering the results. | [optional] |
| **search** | **String** | A search term. | [optional] |
| **task__created_by_group__id** | **Integer** |  | [optional] |
| **task__uuid** | **String** |  | [optional] |

### Return type

[**PaginatedTaskExecutionList**](PaginatedTaskExecutionList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## task_executions_partial_update

> <TaskExecution> task_executions_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TaskExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_task_execution: CloudReactorAPIClient::PatchedTaskExecution.new # PatchedTaskExecution | 
}

begin
  
  result = api_instance.task_executions_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_partial_update: #{e}"
end
```

#### Using the task_executions_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskExecution>, Integer, Hash)> task_executions_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.task_executions_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_task_execution** | [**PatchedTaskExecution**](PatchedTaskExecution.md) |  | [optional] |

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## task_executions_retrieve

> <TaskExecution> task_executions_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TaskExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.task_executions_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_retrieve: #{e}"
end
```

#### Using the task_executions_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskExecution>, Integer, Hash)> task_executions_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.task_executions_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## task_executions_update

> <TaskExecution> task_executions_update(uuid, task_execution)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TaskExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
task_execution = CloudReactorAPIClient::TaskExecution.new({status: CloudReactorAPIClient::TaskExecutionStatus::RUNNING}) # TaskExecution | 

begin
  
  result = api_instance.task_executions_update(uuid, task_execution)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_update: #{e}"
end
```

#### Using the task_executions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskExecution>, Integer, Hash)> task_executions_update_with_http_info(uuid, task_execution)

```ruby
begin
  
  data, status_code, headers = api_instance.task_executions_update_with_http_info(uuid, task_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TaskExecutionsApi->task_executions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **task_execution** | [**TaskExecution**](TaskExecution.md) |  |  |

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

