# CloudReactorAPIClient::AlertMethodsApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alert_methods_clone_create**](AlertMethodsApi.md#alert_methods_clone_create) | **POST** /alert_methods/{uuid}/clone/ |  |
| [**alert_methods_create**](AlertMethodsApi.md#alert_methods_create) | **POST** /alert_methods/ |  |
| [**alert_methods_destroy**](AlertMethodsApi.md#alert_methods_destroy) | **DELETE** /alert_methods/{uuid}/ |  |
| [**alert_methods_list**](AlertMethodsApi.md#alert_methods_list) | **GET** /alert_methods/ |  |
| [**alert_methods_partial_update**](AlertMethodsApi.md#alert_methods_partial_update) | **PATCH** /alert_methods/{uuid}/ |  |
| [**alert_methods_retrieve**](AlertMethodsApi.md#alert_methods_retrieve) | **GET** /alert_methods/{uuid}/ |  |
| [**alert_methods_update**](AlertMethodsApi.md#alert_methods_update) | **PUT** /alert_methods/{uuid}/ |  |


## alert_methods_clone_create

> <AlertMethod> alert_methods_clone_create(uuid, alert_method)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
alert_method = CloudReactorAPIClient::AlertMethod.new({name: 'name_example'}) # AlertMethod | 

begin
  
  result = api_instance.alert_methods_clone_create(uuid, alert_method)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_clone_create: #{e}"
end
```

#### Using the alert_methods_clone_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertMethod>, Integer, Hash)> alert_methods_clone_create_with_http_info(uuid, alert_method)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_clone_create_with_http_info(uuid, alert_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertMethod>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_clone_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **alert_method** | [**AlertMethod**](AlertMethod.md) |  |  |

### Return type

[**AlertMethod**](AlertMethod.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## alert_methods_create

> <AlertMethod> alert_methods_create(alert_method)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
alert_method = CloudReactorAPIClient::AlertMethod.new({name: 'name_example'}) # AlertMethod | 

begin
  
  result = api_instance.alert_methods_create(alert_method)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_create: #{e}"
end
```

#### Using the alert_methods_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertMethod>, Integer, Hash)> alert_methods_create_with_http_info(alert_method)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_create_with_http_info(alert_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertMethod>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_method** | [**AlertMethod**](AlertMethod.md) |  |  |

### Return type

[**AlertMethod**](AlertMethod.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## alert_methods_destroy

> alert_methods_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.alert_methods_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_destroy: #{e}"
end
```

#### Using the alert_methods_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> alert_methods_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_destroy_with_http_info: #{e}"
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


## alert_methods_list

> <PaginatedAlertMethodList> alert_methods_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
opts = {
  created_by_group__id: 56, # Integer | 
  limit: 56, # Integer | Number of results to return per page.
  name: 'name_example', # String | 
  offset: 56, # Integer | The initial index from which to return the results.
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  run_environment__uuid: 'run_environment__uuid_example', # String | 
  search: 'search_example' # String | A search term.
}

begin
  
  result = api_instance.alert_methods_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_list: #{e}"
end
```

#### Using the alert_methods_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAlertMethodList>, Integer, Hash)> alert_methods_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAlertMethodList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_list_with_http_info: #{e}"
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
| **run_environment__uuid** | **String** |  | [optional] |
| **search** | **String** | A search term. | [optional] |

### Return type

[**PaginatedAlertMethodList**](PaginatedAlertMethodList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alert_methods_partial_update

> <AlertMethod> alert_methods_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_alert_method: CloudReactorAPIClient::PatchedAlertMethod.new # PatchedAlertMethod | 
}

begin
  
  result = api_instance.alert_methods_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_partial_update: #{e}"
end
```

#### Using the alert_methods_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertMethod>, Integer, Hash)> alert_methods_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertMethod>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_alert_method** | [**PatchedAlertMethod**](PatchedAlertMethod.md) |  | [optional] |

### Return type

[**AlertMethod**](AlertMethod.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## alert_methods_retrieve

> <AlertMethod> alert_methods_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.alert_methods_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_retrieve: #{e}"
end
```

#### Using the alert_methods_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertMethod>, Integer, Hash)> alert_methods_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertMethod>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**AlertMethod**](AlertMethod.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alert_methods_update

> <AlertMethod> alert_methods_update(uuid, alert_method)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::AlertMethodsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
alert_method = CloudReactorAPIClient::AlertMethod.new({name: 'name_example'}) # AlertMethod | 

begin
  
  result = api_instance.alert_methods_update(uuid, alert_method)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_update: #{e}"
end
```

#### Using the alert_methods_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertMethod>, Integer, Hash)> alert_methods_update_with_http_info(uuid, alert_method)

```ruby
begin
  
  data, status_code, headers = api_instance.alert_methods_update_with_http_info(uuid, alert_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertMethod>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling AlertMethodsApi->alert_methods_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **alert_method** | [**AlertMethod**](AlertMethod.md) |  |  |

### Return type

[**AlertMethod**](AlertMethod.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

