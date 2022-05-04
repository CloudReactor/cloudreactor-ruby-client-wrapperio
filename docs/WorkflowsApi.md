# CloudReactorAPIClient::WorkflowsApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflows_clone_create**](WorkflowsApi.md#workflows_clone_create) | **POST** /workflows/{uuid}/clone/ |  |
| [**workflows_create**](WorkflowsApi.md#workflows_create) | **POST** /workflows/ |  |
| [**workflows_destroy**](WorkflowsApi.md#workflows_destroy) | **DELETE** /workflows/{uuid}/ |  |
| [**workflows_list**](WorkflowsApi.md#workflows_list) | **GET** /workflows/ |  |
| [**workflows_partial_update**](WorkflowsApi.md#workflows_partial_update) | **PATCH** /workflows/{uuid}/ |  |
| [**workflows_retrieve**](WorkflowsApi.md#workflows_retrieve) | **GET** /workflows/{uuid}/ |  |
| [**workflows_update**](WorkflowsApi.md#workflows_update) | **PUT** /workflows/{uuid}/ |  |


## workflows_clone_create

> <Workflow> workflows_clone_create(uuid, workflow)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow = CloudReactorAPIClient::Workflow.new({name: 'name_example'}) # Workflow | 

begin
  
  result = api_instance.workflows_clone_create(uuid, workflow)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_clone_create: #{e}"
end
```

#### Using the workflows_clone_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workflow>, Integer, Hash)> workflows_clone_create_with_http_info(uuid, workflow)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_clone_create_with_http_info(uuid, workflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workflow>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_clone_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow** | [**Workflow**](Workflow.md) |  |  |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflows_create

> <Workflow> workflows_create(workflow)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
workflow = CloudReactorAPIClient::Workflow.new({name: 'name_example'}) # Workflow | 

begin
  
  result = api_instance.workflows_create(workflow)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_create: #{e}"
end
```

#### Using the workflows_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workflow>, Integer, Hash)> workflows_create_with_http_info(workflow)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_create_with_http_info(workflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workflow>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow** | [**Workflow**](Workflow.md) |  |  |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflows_destroy

> workflows_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.workflows_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_destroy: #{e}"
end
```

#### Using the workflows_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflows_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_destroy_with_http_info: #{e}"
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


## workflows_list

> <PaginatedWorkflowSummaryList> workflows_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
opts = {
  description: 'description_example', # String | 
  limit: 56, # Integer | Number of results to return per page.
  name: 'name_example', # String | 
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  run_environment__uuid: 'run_environment__uuid_example', # String | 
  search: 'search_example' # String | A search term.
}

begin
  
  result = api_instance.workflows_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_list: #{e}"
end
```

#### Using the workflows_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkflowSummaryList>, Integer, Hash)> workflows_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkflowSummaryList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_list_with_http_info: #{e}"
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

[**PaginatedWorkflowSummaryList**](PaginatedWorkflowSummaryList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflows_partial_update

> <Workflow> workflows_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_workflow: CloudReactorAPIClient::PatchedWorkflow.new # PatchedWorkflow | 
}

begin
  
  result = api_instance.workflows_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_partial_update: #{e}"
end
```

#### Using the workflows_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workflow>, Integer, Hash)> workflows_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workflow>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_workflow** | [**PatchedWorkflow**](PatchedWorkflow.md) |  | [optional] |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflows_retrieve

> <Workflow> workflows_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.workflows_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_retrieve: #{e}"
end
```

#### Using the workflows_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workflow>, Integer, Hash)> workflows_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workflow>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflows_update

> <Workflow> workflows_update(uuid, workflow)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow = CloudReactorAPIClient::Workflow.new({name: 'name_example'}) # Workflow | 

begin
  
  result = api_instance.workflows_update(uuid, workflow)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_update: #{e}"
end
```

#### Using the workflows_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workflow>, Integer, Hash)> workflows_update_with_http_info(uuid, workflow)

```ruby
begin
  
  data, status_code, headers = api_instance.workflows_update_with_http_info(uuid, workflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workflow>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowsApi->workflows_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow** | [**Workflow**](Workflow.md) |  |  |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

