# CloudReactorAPIClient::WorkflowExecutionsApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflow_executions_create**](WorkflowExecutionsApi.md#workflow_executions_create) | **POST** /workflow_executions/ |  |
| [**workflow_executions_destroy**](WorkflowExecutionsApi.md#workflow_executions_destroy) | **DELETE** /workflow_executions/{uuid}/ |  |
| [**workflow_executions_list**](WorkflowExecutionsApi.md#workflow_executions_list) | **GET** /workflow_executions/ |  |
| [**workflow_executions_partial_update**](WorkflowExecutionsApi.md#workflow_executions_partial_update) | **PATCH** /workflow_executions/{uuid}/ |  |
| [**workflow_executions_retrieve**](WorkflowExecutionsApi.md#workflow_executions_retrieve) | **GET** /workflow_executions/{uuid}/ |  |
| [**workflow_executions_retry_create**](WorkflowExecutionsApi.md#workflow_executions_retry_create) | **POST** /workflow_executions/{uuid}/retry/ |  |
| [**workflow_executions_update**](WorkflowExecutionsApi.md#workflow_executions_update) | **PUT** /workflow_executions/{uuid}/ |  |
| [**workflow_executions_workflow_task_instance_executions_create**](WorkflowExecutionsApi.md#workflow_executions_workflow_task_instance_executions_create) | **POST** /workflow_executions/{uuid}/workflow_task_instance_executions/ |  |


## workflow_executions_create

> <WorkflowExecution> workflow_executions_create(workflow_execution)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
workflow_execution = CloudReactorAPIClient::WorkflowExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', workflow: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), status: CloudReactorAPIClient::WorkflowExecutionStatus::RUNNING, started_at: Time.now, started_by: 'started_by_example', marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_snapshot: { key: 3.56}, workflow_task_instance_executions: [CloudReactorAPIClient::WorkflowTaskInstanceExecution.new({uuid: 'uuid_example', workflow_execution: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), workflow_task_instance: , task_execution: CloudReactorAPIClient::TaskExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', infrastructure_website_url: 'infrastructure_website_url_example', commit_url: 'commit_url_example', execution_method: CloudReactorAPIClient::AwsEcsExecutionMethod.new({type: 'type_example', task_definition_infrastructure_website_url: 'task_definition_infrastructure_website_url_example', tags: { key: 'inner_example'}, subnet_infrastructure_website_urls: ['subnet_infrastructure_website_urls_example'], security_group_infrastructure_website_urls: ['security_group_infrastructure_website_urls_example'], cluster_infrastructure_website_url: 'cluster_infrastructure_website_url_example', execution_role_infrastructure_website_url: 'execution_role_infrastructure_website_url_example', task_role_infrastructure_website_url: 'task_role_infrastructure_website_url_example'}), status: CloudReactorAPIClient::TaskExecutionStatus::RUNNING, started_by: 'started_by_example', started_at: Time.now, marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_task_instance_execution: CloudReactorAPIClient::WorkflowTaskInstanceExecutionBase.new({uuid: 'uuid_example', workflow_execution: , workflow_task_instance: , is_latest: false, created_at: Time.now}), created_at: Time.now, updated_at: Time.now}), is_latest: false, created_at: Time.now})], workflow_transition_evaluations: [CloudReactorAPIClient::WorkflowTransitionEvaluation.new({uuid: 'uuid_example', result: false, workflow_transition: , workflow_execution: , from_workflow_task_instance_execution: 'from_workflow_task_instance_execution_example', evaluated_at: Time.now})], created_at: Time.now, updated_at: Time.now}) # WorkflowExecution | 

begin
  
  result = api_instance.workflow_executions_create(workflow_execution)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_create: #{e}"
end
```

#### Using the workflow_executions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowExecution>, Integer, Hash)> workflow_executions_create_with_http_info(workflow_execution)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_create_with_http_info(workflow_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_execution** | [**WorkflowExecution**](WorkflowExecution.md) |  |  |

### Return type

[**WorkflowExecution**](WorkflowExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## workflow_executions_destroy

> workflow_executions_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.workflow_executions_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_destroy: #{e}"
end
```

#### Using the workflow_executions_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_executions_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_destroy_with_http_info: #{e}"
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


## workflow_executions_list

> <PaginatedWorkflowExecutionSummaryList> workflow_executions_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
opts = {
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  search: 'search_example', # String | A search term.
  workflow__created_by_group__id: 'workflow__created_by_group__id_example', # String | 
  workflow__uuid: 'workflow__uuid_example' # String | 
}

begin
  
  result = api_instance.workflow_executions_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_list: #{e}"
end
```

#### Using the workflow_executions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkflowExecutionSummaryList>, Integer, Hash)> workflow_executions_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkflowExecutionSummaryList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |
| **ordering** | **String** | Which field to use when ordering the results. | [optional] |
| **search** | **String** | A search term. | [optional] |
| **workflow__created_by_group__id** | **String** |  | [optional] |
| **workflow__uuid** | **String** |  | [optional] |

### Return type

[**PaginatedWorkflowExecutionSummaryList**](PaginatedWorkflowExecutionSummaryList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_executions_partial_update

> <WorkflowExecution> workflow_executions_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_workflow_execution: CloudReactorAPIClient::PatchedWorkflowExecution.new # PatchedWorkflowExecution | 
}

begin
  
  result = api_instance.workflow_executions_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_partial_update: #{e}"
end
```

#### Using the workflow_executions_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowExecution>, Integer, Hash)> workflow_executions_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_workflow_execution** | [**PatchedWorkflowExecution**](PatchedWorkflowExecution.md) |  | [optional] |

### Return type

[**WorkflowExecution**](WorkflowExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## workflow_executions_retrieve

> <WorkflowExecution> workflow_executions_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.workflow_executions_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_retrieve: #{e}"
end
```

#### Using the workflow_executions_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowExecution>, Integer, Hash)> workflow_executions_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**WorkflowExecution**](WorkflowExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_executions_retry_create

> <WorkflowExecution> workflow_executions_retry_create(uuid, workflow_execution)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow_execution = CloudReactorAPIClient::WorkflowExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', workflow: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), status: CloudReactorAPIClient::WorkflowExecutionStatus::RUNNING, started_at: Time.now, started_by: 'started_by_example', marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_snapshot: { key: 3.56}, workflow_task_instance_executions: [CloudReactorAPIClient::WorkflowTaskInstanceExecution.new({uuid: 'uuid_example', workflow_execution: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), workflow_task_instance: , task_execution: CloudReactorAPIClient::TaskExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', infrastructure_website_url: 'infrastructure_website_url_example', commit_url: 'commit_url_example', execution_method: CloudReactorAPIClient::AwsEcsExecutionMethod.new({type: 'type_example', task_definition_infrastructure_website_url: 'task_definition_infrastructure_website_url_example', tags: { key: 'inner_example'}, subnet_infrastructure_website_urls: ['subnet_infrastructure_website_urls_example'], security_group_infrastructure_website_urls: ['security_group_infrastructure_website_urls_example'], cluster_infrastructure_website_url: 'cluster_infrastructure_website_url_example', execution_role_infrastructure_website_url: 'execution_role_infrastructure_website_url_example', task_role_infrastructure_website_url: 'task_role_infrastructure_website_url_example'}), status: CloudReactorAPIClient::TaskExecutionStatus::RUNNING, started_by: 'started_by_example', started_at: Time.now, marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_task_instance_execution: CloudReactorAPIClient::WorkflowTaskInstanceExecutionBase.new({uuid: 'uuid_example', workflow_execution: , workflow_task_instance: , is_latest: false, created_at: Time.now}), created_at: Time.now, updated_at: Time.now}), is_latest: false, created_at: Time.now})], workflow_transition_evaluations: [CloudReactorAPIClient::WorkflowTransitionEvaluation.new({uuid: 'uuid_example', result: false, workflow_transition: , workflow_execution: , from_workflow_task_instance_execution: 'from_workflow_task_instance_execution_example', evaluated_at: Time.now})], created_at: Time.now, updated_at: Time.now}) # WorkflowExecution | 

begin
  
  result = api_instance.workflow_executions_retry_create(uuid, workflow_execution)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_retry_create: #{e}"
end
```

#### Using the workflow_executions_retry_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowExecution>, Integer, Hash)> workflow_executions_retry_create_with_http_info(uuid, workflow_execution)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_retry_create_with_http_info(uuid, workflow_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_retry_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow_execution** | [**WorkflowExecution**](WorkflowExecution.md) |  |  |

### Return type

[**WorkflowExecution**](WorkflowExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## workflow_executions_update

> <WorkflowExecution> workflow_executions_update(uuid, workflow_execution)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow_execution = CloudReactorAPIClient::WorkflowExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', workflow: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), status: CloudReactorAPIClient::WorkflowExecutionStatus::RUNNING, started_at: Time.now, started_by: 'started_by_example', marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_snapshot: { key: 3.56}, workflow_task_instance_executions: [CloudReactorAPIClient::WorkflowTaskInstanceExecution.new({uuid: 'uuid_example', workflow_execution: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), workflow_task_instance: , task_execution: CloudReactorAPIClient::TaskExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', infrastructure_website_url: 'infrastructure_website_url_example', commit_url: 'commit_url_example', execution_method: CloudReactorAPIClient::AwsEcsExecutionMethod.new({type: 'type_example', task_definition_infrastructure_website_url: 'task_definition_infrastructure_website_url_example', tags: { key: 'inner_example'}, subnet_infrastructure_website_urls: ['subnet_infrastructure_website_urls_example'], security_group_infrastructure_website_urls: ['security_group_infrastructure_website_urls_example'], cluster_infrastructure_website_url: 'cluster_infrastructure_website_url_example', execution_role_infrastructure_website_url: 'execution_role_infrastructure_website_url_example', task_role_infrastructure_website_url: 'task_role_infrastructure_website_url_example'}), status: CloudReactorAPIClient::TaskExecutionStatus::RUNNING, started_by: 'started_by_example', started_at: Time.now, marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_task_instance_execution: CloudReactorAPIClient::WorkflowTaskInstanceExecutionBase.new({uuid: 'uuid_example', workflow_execution: , workflow_task_instance: , is_latest: false, created_at: Time.now}), created_at: Time.now, updated_at: Time.now}), is_latest: false, created_at: Time.now})], workflow_transition_evaluations: [CloudReactorAPIClient::WorkflowTransitionEvaluation.new({uuid: 'uuid_example', result: false, workflow_transition: , workflow_execution: , from_workflow_task_instance_execution: 'from_workflow_task_instance_execution_example', evaluated_at: Time.now})], created_at: Time.now, updated_at: Time.now}) # WorkflowExecution | 

begin
  
  result = api_instance.workflow_executions_update(uuid, workflow_execution)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_update: #{e}"
end
```

#### Using the workflow_executions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowExecution>, Integer, Hash)> workflow_executions_update_with_http_info(uuid, workflow_execution)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_update_with_http_info(uuid, workflow_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow_execution** | [**WorkflowExecution**](WorkflowExecution.md) |  |  |

### Return type

[**WorkflowExecution**](WorkflowExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## workflow_executions_workflow_task_instance_executions_create

> <WorkflowExecution> workflow_executions_workflow_task_instance_executions_create(uuid, workflow_execution)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = CloudReactorAPIClient::WorkflowExecutionsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
workflow_execution = CloudReactorAPIClient::WorkflowExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', workflow: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), status: CloudReactorAPIClient::WorkflowExecutionStatus::RUNNING, started_at: Time.now, started_by: 'started_by_example', marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_snapshot: { key: 3.56}, workflow_task_instance_executions: [CloudReactorAPIClient::WorkflowTaskInstanceExecution.new({uuid: 'uuid_example', workflow_execution: CloudReactorAPIClient::NameAndUuid.new({url: 'url_example'}), workflow_task_instance: , task_execution: CloudReactorAPIClient::TaskExecution.new({url: 'url_example', uuid: 'uuid_example', dashboard_url: 'dashboard_url_example', infrastructure_website_url: 'infrastructure_website_url_example', commit_url: 'commit_url_example', execution_method: CloudReactorAPIClient::AwsEcsExecutionMethod.new({type: 'type_example', task_definition_infrastructure_website_url: 'task_definition_infrastructure_website_url_example', tags: { key: 'inner_example'}, subnet_infrastructure_website_urls: ['subnet_infrastructure_website_urls_example'], security_group_infrastructure_website_urls: ['security_group_infrastructure_website_urls_example'], cluster_infrastructure_website_url: 'cluster_infrastructure_website_url_example', execution_role_infrastructure_website_url: 'execution_role_infrastructure_website_url_example', task_role_infrastructure_website_url: 'task_role_infrastructure_website_url_example'}), status: CloudReactorAPIClient::TaskExecutionStatus::RUNNING, started_by: 'started_by_example', started_at: Time.now, marked_done_by: 'marked_done_by_example', killed_by: 'killed_by_example', workflow_task_instance_execution: CloudReactorAPIClient::WorkflowTaskInstanceExecutionBase.new({uuid: 'uuid_example', workflow_execution: , workflow_task_instance: , is_latest: false, created_at: Time.now}), created_at: Time.now, updated_at: Time.now}), is_latest: false, created_at: Time.now})], workflow_transition_evaluations: [CloudReactorAPIClient::WorkflowTransitionEvaluation.new({uuid: 'uuid_example', result: false, workflow_transition: , workflow_execution: , from_workflow_task_instance_execution: 'from_workflow_task_instance_execution_example', evaluated_at: Time.now})], created_at: Time.now, updated_at: Time.now}) # WorkflowExecution | 

begin
  
  result = api_instance.workflow_executions_workflow_task_instance_executions_create(uuid, workflow_execution)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_workflow_task_instance_executions_create: #{e}"
end
```

#### Using the workflow_executions_workflow_task_instance_executions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowExecution>, Integer, Hash)> workflow_executions_workflow_task_instance_executions_create_with_http_info(uuid, workflow_execution)

```ruby
begin
  
  data, status_code, headers = api_instance.workflow_executions_workflow_task_instance_executions_create_with_http_info(uuid, workflow_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowExecution>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling WorkflowExecutionsApi->workflow_executions_workflow_task_instance_executions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **workflow_execution** | [**WorkflowExecution**](WorkflowExecution.md) |  |  |

### Return type

[**WorkflowExecution**](WorkflowExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

