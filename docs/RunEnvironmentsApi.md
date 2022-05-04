# CloudReactorAPIClient::RunEnvironmentsApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**run_environments_clone_create**](RunEnvironmentsApi.md#run_environments_clone_create) | **POST** /run_environments/{uuid}/clone/ |  |
| [**run_environments_create**](RunEnvironmentsApi.md#run_environments_create) | **POST** /run_environments/ |  |
| [**run_environments_destroy**](RunEnvironmentsApi.md#run_environments_destroy) | **DELETE** /run_environments/{uuid}/ |  |
| [**run_environments_list**](RunEnvironmentsApi.md#run_environments_list) | **GET** /run_environments/ |  |
| [**run_environments_partial_update**](RunEnvironmentsApi.md#run_environments_partial_update) | **PATCH** /run_environments/{uuid}/ |  |
| [**run_environments_retrieve**](RunEnvironmentsApi.md#run_environments_retrieve) | **GET** /run_environments/{uuid}/ |  |
| [**run_environments_update**](RunEnvironmentsApi.md#run_environments_update) | **PUT** /run_environments/{uuid}/ |  |


## run_environments_clone_create

> <RunEnvironment> run_environments_clone_create(uuid, run_environment)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
run_environment = CloudReactorAPIClient::RunEnvironment.new({name: 'name_example'}) # RunEnvironment | 

begin
  
  result = api_instance.run_environments_clone_create(uuid, run_environment)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_clone_create: #{e}"
end
```

#### Using the run_environments_clone_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunEnvironment>, Integer, Hash)> run_environments_clone_create_with_http_info(uuid, run_environment)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_clone_create_with_http_info(uuid, run_environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunEnvironment>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_clone_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **run_environment** | [**RunEnvironment**](RunEnvironment.md) |  |  |

### Return type

[**RunEnvironment**](RunEnvironment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## run_environments_create

> <RunEnvironment> run_environments_create(run_environment)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
run_environment = CloudReactorAPIClient::RunEnvironment.new({name: 'name_example'}) # RunEnvironment | 

begin
  
  result = api_instance.run_environments_create(run_environment)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_create: #{e}"
end
```

#### Using the run_environments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunEnvironment>, Integer, Hash)> run_environments_create_with_http_info(run_environment)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_create_with_http_info(run_environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunEnvironment>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_environment** | [**RunEnvironment**](RunEnvironment.md) |  |  |

### Return type

[**RunEnvironment**](RunEnvironment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## run_environments_destroy

> run_environments_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.run_environments_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_destroy: #{e}"
end
```

#### Using the run_environments_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> run_environments_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_destroy_with_http_info: #{e}"
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


## run_environments_list

> <PaginatedRunEnvironmentList> run_environments_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
opts = {
  created_by_group__id: 56, # Integer | 
  limit: 56, # Integer | Number of results to return per page.
  name: 'name_example', # String | 
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  search: 'search_example' # String | A search term.
}

begin
  
  result = api_instance.run_environments_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_list: #{e}"
end
```

#### Using the run_environments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRunEnvironmentList>, Integer, Hash)> run_environments_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRunEnvironmentList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by_group__id** | **Integer** |  | [optional] |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **name** | **String** |  | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |
| **ordering** | **String** | Which field to use when ordering the results. | [optional] |
| **search** | **String** | A search term. | [optional] |

### Return type

[**PaginatedRunEnvironmentList**](PaginatedRunEnvironmentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_environments_partial_update

> <RunEnvironment> run_environments_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_run_environment: CloudReactorAPIClient::PatchedRunEnvironment.new # PatchedRunEnvironment | 
}

begin
  
  result = api_instance.run_environments_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_partial_update: #{e}"
end
```

#### Using the run_environments_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunEnvironment>, Integer, Hash)> run_environments_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunEnvironment>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_run_environment** | [**PatchedRunEnvironment**](PatchedRunEnvironment.md) |  | [optional] |

### Return type

[**RunEnvironment**](RunEnvironment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## run_environments_retrieve

> <RunEnvironment> run_environments_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.run_environments_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_retrieve: #{e}"
end
```

#### Using the run_environments_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunEnvironment>, Integer, Hash)> run_environments_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunEnvironment>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**RunEnvironment**](RunEnvironment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_environments_update

> <RunEnvironment> run_environments_update(uuid, run_environment)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
run_environment = CloudReactorAPIClient::RunEnvironment.new({name: 'name_example'}) # RunEnvironment | 

begin
  
  result = api_instance.run_environments_update(uuid, run_environment)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_update: #{e}"
end
```

#### Using the run_environments_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunEnvironment>, Integer, Hash)> run_environments_update_with_http_info(uuid, run_environment)

```ruby
begin
  
  data, status_code, headers = api_instance.run_environments_update_with_http_info(uuid, run_environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunEnvironment>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling RunEnvironmentsApi->run_environments_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **run_environment** | [**RunEnvironment**](RunEnvironment.md) |  |  |

### Return type

[**RunEnvironment**](RunEnvironment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

