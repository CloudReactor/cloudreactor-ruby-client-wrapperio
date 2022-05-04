# CloudReactorAPIClient::TasksApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tasks_create**](TasksApi.md#tasks_create) | **POST** /tasks/ |  |
| [**tasks_destroy**](TasksApi.md#tasks_destroy) | **DELETE** /tasks/{uuid}/ |  |
| [**tasks_list**](TasksApi.md#tasks_list) | **GET** /tasks/ |  |
| [**tasks_partial_update**](TasksApi.md#tasks_partial_update) | **PATCH** /tasks/{uuid}/ |  |
| [**tasks_retrieve**](TasksApi.md#tasks_retrieve) | **GET** /tasks/{uuid}/ |  |
| [**tasks_update**](TasksApi.md#tasks_update) | **PUT** /tasks/{uuid}/ |  |


## tasks_create

> <Task> tasks_create(task)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TasksApi.new
task = CloudReactorAPIClient::Task.new({name: 'name_example'}) # Task | 

begin
  
  result = api_instance.tasks_create(task)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_create: #{e}"
end
```

#### Using the tasks_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> tasks_create_with_http_info(task)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_create_with_http_info(task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task** | [**Task**](Task.md) |  |  |

### Return type

[**Task**](Task.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tasks_destroy

> tasks_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TasksApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.tasks_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_destroy: #{e}"
end
```

#### Using the tasks_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tasks_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_destroy_with_http_info: #{e}"
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


## tasks_list

> <PaginatedTaskList> tasks_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TasksApi.new
opts = {
  description: 'description_example', # String | 
  limit: 56, # Integer | Number of results to return per page.
  name: 'name_example', # String | 
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  run_environment__uuid: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  search: 'search_example' # String | A search term.
}

begin
  
  result = api_instance.tasks_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_list: #{e}"
end
```

#### Using the tasks_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTaskList>, Integer, Hash)> tasks_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTaskList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_list_with_http_info: #{e}"
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
| **run_environment__uuid** | **String** |  | [optional] |
| **search** | **String** | A search term. | [optional] |

### Return type

[**PaginatedTaskList**](PaginatedTaskList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_partial_update

> <Task> tasks_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TasksApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_task: CloudReactorAPIClient::PatchedTask.new # PatchedTask | 
}

begin
  
  result = api_instance.tasks_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_partial_update: #{e}"
end
```

#### Using the tasks_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> tasks_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_task** | [**PatchedTask**](PatchedTask.md) |  | [optional] |

### Return type

[**Task**](Task.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tasks_retrieve

> <Task> tasks_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TasksApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.tasks_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_retrieve: #{e}"
end
```

#### Using the tasks_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> tasks_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**Task**](Task.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_update

> <Task> tasks_update(uuid, task)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::TasksApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
task = CloudReactorAPIClient::Task.new({name: 'name_example'}) # Task | 

begin
  
  result = api_instance.tasks_update(uuid, task)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_update: #{e}"
end
```

#### Using the tasks_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> tasks_update_with_http_info(uuid, task)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_update_with_http_info(uuid, task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling TasksApi->tasks_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **task** | [**Task**](Task.md) |  |  |

### Return type

[**Task**](Task.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

