# CloudReactorAPIClient::WorkflowTransitionsApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflow_transitions_create**](WorkflowTransitionsApi.md#workflow_transitions_create) | **POST** /workflow_transitions/ |  |
| [**workflow_transitions_destroy**](WorkflowTransitionsApi.md#workflow_transitions_destroy) | **DELETE** /workflow_transitions/{uuid}/ |  |
| [**workflow_transitions_list**](WorkflowTransitionsApi.md#workflow_transitions_list) | **GET** /workflow_transitions/ |  |
| [**workflow_transitions_partial_update**](WorkflowTransitionsApi.md#workflow_transitions_partial_update) | **PATCH** /workflow_transitions/{uuid}/ |  |
| [**workflow_transitions_retrieve**](WorkflowTransitionsApi.md#workflow_transitions_retrieve) | **GET** /workflow_transitions/{uuid}/ |  |
| [**workflow_transitions_update**](WorkflowTransitionsApi.md#workflow_transitions_update) | **PUT** /workflow_transitions/{uuid}/ |  |


## workflow_transitions_create

> <WorkflowTransition> workflow_transitions_create(workflow_transition)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
workflow_transition = CloudReactorAPIClient::WorkflowTransition.new({from_workflow_task_instance: CloudReactorAPIClient::NameAndUuid.new, to_workflow_task_instance: CloudReactorAPIClient::NameAndUuid.new, rule_type: CloudReactorAPIClient::RuleTypeEnum::ALWAYS}) # WorkflowTransition | 

begin
  
  result = api_instance.workflow_transitions_create(workflow_transition)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_create: #{e}"
end
```

#### Using the workflow_transitions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTransition>, Integer, Hash)> workflow_transitions_create_with_http_info(workflow_transition)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_transitions_create_with_http_info(workflow_transition)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTransition>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_transition** | [**WorkflowTransition**](WorkflowTransition.md) |  |  |

### Return type

[**WorkflowTransition**](WorkflowTransition.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_transitions_destroy

> workflow_transitions_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.workflow_transitions_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_destroy: #{e}"
end
```

#### Using the workflow_transitions_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_transitions_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_transitions_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_destroy_with_http_info: #{e}"
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


## workflow_transitions_list

> <PaginatedWorkflowTransitionList> workflow_transitions_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
opts = {
  description: 'description_example', # String | 
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  search: 'search_example' # String | A search term.
}

begin
  
  result = api_instance.workflow_transitions_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_list: #{e}"
end
```

#### Using the workflow_transitions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkflowTransitionList>, Integer, Hash)> workflow_transitions_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_transitions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkflowTransitionList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |
| **ordering** | **String** | Which field to use when ordering the results. | [optional] |
| **search** | **String** | A search term. | [optional] |

### Return type

[**PaginatedWorkflowTransitionList**](PaginatedWorkflowTransitionList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_transitions_partial_update

> <WorkflowTransition> workflow_transitions_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_workflow_transition: CloudReactorAPIClient::PatchedWorkflowTransition.new # PatchedWorkflowTransition | 
}

begin
  
  result = api_instance.workflow_transitions_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_partial_update: #{e}"
end
```

#### Using the workflow_transitions_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTransition>, Integer, Hash)> workflow_transitions_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_transitions_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTransition>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_workflow_transition** | [**PatchedWorkflowTransition**](PatchedWorkflowTransition.md) |  | [optional] |

### Return type

[**WorkflowTransition**](WorkflowTransition.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_transitions_retrieve

> <WorkflowTransition> workflow_transitions_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.workflow_transitions_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_retrieve: #{e}"
end
```

#### Using the workflow_transitions_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTransition>, Integer, Hash)> workflow_transitions_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_transitions_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTransition>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**WorkflowTransition**](WorkflowTransition.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_transitions_update

> <WorkflowTransition> workflow_transitions_update(uuid, workflow_transition)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow_transition = CloudReactorAPIClient::WorkflowTransition.new({from_workflow_task_instance: CloudReactorAPIClient::NameAndUuid.new, to_workflow_task_instance: CloudReactorAPIClient::NameAndUuid.new, rule_type: CloudReactorAPIClient::RuleTypeEnum::ALWAYS}) # WorkflowTransition | 

begin
  
  result = api_instance.workflow_transitions_update(uuid, workflow_transition)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_update: #{e}"
end
```

#### Using the workflow_transitions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTransition>, Integer, Hash)> workflow_transitions_update_with_http_info(uuid, workflow_transition)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_transitions_update_with_http_info(uuid, workflow_transition)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTransition>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowTransitionsApi->workflow_transitions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow_transition** | [**WorkflowTransition**](WorkflowTransition.md) |  |  |

### Return type

[**WorkflowTransition**](WorkflowTransition.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

