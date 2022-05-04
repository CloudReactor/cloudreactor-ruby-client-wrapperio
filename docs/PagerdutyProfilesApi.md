# CloudReactorAPIClient::PagerdutyProfilesApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pagerduty_profiles_clone_create**](PagerdutyProfilesApi.md#pagerduty_profiles_clone_create) | **POST** /pagerduty_profiles/{uuid}/clone/ |  |
| [**pagerduty_profiles_create**](PagerdutyProfilesApi.md#pagerduty_profiles_create) | **POST** /pagerduty_profiles/ |  |
| [**pagerduty_profiles_destroy**](PagerdutyProfilesApi.md#pagerduty_profiles_destroy) | **DELETE** /pagerduty_profiles/{uuid}/ |  |
| [**pagerduty_profiles_list**](PagerdutyProfilesApi.md#pagerduty_profiles_list) | **GET** /pagerduty_profiles/ |  |
| [**pagerduty_profiles_partial_update**](PagerdutyProfilesApi.md#pagerduty_profiles_partial_update) | **PATCH** /pagerduty_profiles/{uuid}/ |  |
| [**pagerduty_profiles_retrieve**](PagerdutyProfilesApi.md#pagerduty_profiles_retrieve) | **GET** /pagerduty_profiles/{uuid}/ |  |
| [**pagerduty_profiles_update**](PagerdutyProfilesApi.md#pagerduty_profiles_update) | **PUT** /pagerduty_profiles/{uuid}/ |  |


## pagerduty_profiles_clone_create

> <PagerDutyProfile> pagerduty_profiles_clone_create(uuid, pager_duty_profile)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pager_duty_profile = CloudReactorAPIClient::PagerDutyProfile.new({name: 'name_example', integration_key: 'integration_key_example'}) # PagerDutyProfile | 

begin
  
  result = api_instance.pagerduty_profiles_clone_create(uuid, pager_duty_profile)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_clone_create: #{e}"
end
```

#### Using the pagerduty_profiles_clone_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyProfile>, Integer, Hash)> pagerduty_profiles_clone_create_with_http_info(uuid, pager_duty_profile)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_clone_create_with_http_info(uuid, pager_duty_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_clone_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **pager_duty_profile** | [**PagerDutyProfile**](PagerDutyProfile.md) |  |  |

### Return type

[**PagerDutyProfile**](PagerDutyProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pagerduty_profiles_create

> <PagerDutyProfile> pagerduty_profiles_create(pager_duty_profile)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
pager_duty_profile = CloudReactorAPIClient::PagerDutyProfile.new({name: 'name_example', integration_key: 'integration_key_example'}) # PagerDutyProfile | 

begin
  
  result = api_instance.pagerduty_profiles_create(pager_duty_profile)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_create: #{e}"
end
```

#### Using the pagerduty_profiles_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyProfile>, Integer, Hash)> pagerduty_profiles_create_with_http_info(pager_duty_profile)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_create_with_http_info(pager_duty_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pager_duty_profile** | [**PagerDutyProfile**](PagerDutyProfile.md) |  |  |

### Return type

[**PagerDutyProfile**](PagerDutyProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pagerduty_profiles_destroy

> pagerduty_profiles_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.pagerduty_profiles_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_destroy: #{e}"
end
```

#### Using the pagerduty_profiles_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> pagerduty_profiles_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_destroy_with_http_info: #{e}"
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


## pagerduty_profiles_list

> <PaginatedPagerDutyProfileList> pagerduty_profiles_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
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
  
  result = api_instance.pagerduty_profiles_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_list: #{e}"
end
```

#### Using the pagerduty_profiles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPagerDutyProfileList>, Integer, Hash)> pagerduty_profiles_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPagerDutyProfileList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_list_with_http_info: #{e}"
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

[**PaginatedPagerDutyProfileList**](PaginatedPagerDutyProfileList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pagerduty_profiles_partial_update

> <PagerDutyProfile> pagerduty_profiles_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_pager_duty_profile: CloudReactorAPIClient::PatchedPagerDutyProfile.new # PatchedPagerDutyProfile | 
}

begin
  
  result = api_instance.pagerduty_profiles_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_partial_update: #{e}"
end
```

#### Using the pagerduty_profiles_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyProfile>, Integer, Hash)> pagerduty_profiles_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_pager_duty_profile** | [**PatchedPagerDutyProfile**](PatchedPagerDutyProfile.md) |  | [optional] |

### Return type

[**PagerDutyProfile**](PagerDutyProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pagerduty_profiles_retrieve

> <PagerDutyProfile> pagerduty_profiles_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.pagerduty_profiles_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_retrieve: #{e}"
end
```

#### Using the pagerduty_profiles_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyProfile>, Integer, Hash)> pagerduty_profiles_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**PagerDutyProfile**](PagerDutyProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pagerduty_profiles_update

> <PagerDutyProfile> pagerduty_profiles_update(uuid, pager_duty_profile)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::PagerdutyProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pager_duty_profile = CloudReactorAPIClient::PagerDutyProfile.new({name: 'name_example', integration_key: 'integration_key_example'}) # PagerDutyProfile | 

begin
  
  result = api_instance.pagerduty_profiles_update(uuid, pager_duty_profile)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_update: #{e}"
end
```

#### Using the pagerduty_profiles_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyProfile>, Integer, Hash)> pagerduty_profiles_update_with_http_info(uuid, pager_duty_profile)

```ruby
begin
  
  data, status_code, headers = api_instance.pagerduty_profiles_update_with_http_info(uuid, pager_duty_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling PagerdutyProfilesApi->pagerduty_profiles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **pager_duty_profile** | [**PagerDutyProfile**](PagerDutyProfile.md) |  |  |

### Return type

[**PagerDutyProfile**](PagerDutyProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

