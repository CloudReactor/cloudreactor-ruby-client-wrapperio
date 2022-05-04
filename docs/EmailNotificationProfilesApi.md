# CloudReactorAPIClient::EmailNotificationProfilesApi

All URIs are relative to *https://api.cloudreactor.io/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**email_notification_profiles_clone_create**](EmailNotificationProfilesApi.md#email_notification_profiles_clone_create) | **POST** /email_notification_profiles/{uuid}/clone/ |  |
| [**email_notification_profiles_create**](EmailNotificationProfilesApi.md#email_notification_profiles_create) | **POST** /email_notification_profiles/ |  |
| [**email_notification_profiles_destroy**](EmailNotificationProfilesApi.md#email_notification_profiles_destroy) | **DELETE** /email_notification_profiles/{uuid}/ |  |
| [**email_notification_profiles_list**](EmailNotificationProfilesApi.md#email_notification_profiles_list) | **GET** /email_notification_profiles/ |  |
| [**email_notification_profiles_partial_update**](EmailNotificationProfilesApi.md#email_notification_profiles_partial_update) | **PATCH** /email_notification_profiles/{uuid}/ |  |
| [**email_notification_profiles_retrieve**](EmailNotificationProfilesApi.md#email_notification_profiles_retrieve) | **GET** /email_notification_profiles/{uuid}/ |  |
| [**email_notification_profiles_update**](EmailNotificationProfilesApi.md#email_notification_profiles_update) | **PUT** /email_notification_profiles/{uuid}/ |  |


## email_notification_profiles_clone_create

> <EmailNotificationProfile> email_notification_profiles_clone_create(uuid, email_notification_profile)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
email_notification_profile = CloudReactorAPIClient::EmailNotificationProfile.new({name: 'name_example'}) # EmailNotificationProfile | 

begin
  
  result = api_instance.email_notification_profiles_clone_create(uuid, email_notification_profile)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_clone_create: #{e}"
end
```

#### Using the email_notification_profiles_clone_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailNotificationProfile>, Integer, Hash)> email_notification_profiles_clone_create_with_http_info(uuid, email_notification_profile)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_clone_create_with_http_info(uuid, email_notification_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailNotificationProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_clone_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **email_notification_profile** | [**EmailNotificationProfile**](EmailNotificationProfile.md) |  |  |

### Return type

[**EmailNotificationProfile**](EmailNotificationProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## email_notification_profiles_create

> <EmailNotificationProfile> email_notification_profiles_create(email_notification_profile)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
email_notification_profile = CloudReactorAPIClient::EmailNotificationProfile.new({name: 'name_example'}) # EmailNotificationProfile | 

begin
  
  result = api_instance.email_notification_profiles_create(email_notification_profile)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_create: #{e}"
end
```

#### Using the email_notification_profiles_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailNotificationProfile>, Integer, Hash)> email_notification_profiles_create_with_http_info(email_notification_profile)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_create_with_http_info(email_notification_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailNotificationProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_notification_profile** | [**EmailNotificationProfile**](EmailNotificationProfile.md) |  |  |

### Return type

[**EmailNotificationProfile**](EmailNotificationProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## email_notification_profiles_destroy

> email_notification_profiles_destroy(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.email_notification_profiles_destroy(uuid)
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_destroy: #{e}"
end
```

#### Using the email_notification_profiles_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> email_notification_profiles_destroy_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_destroy_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_destroy_with_http_info: #{e}"
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


## email_notification_profiles_list

> <PaginatedEmailNotificationProfileList> email_notification_profiles_list(opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
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
  
  result = api_instance.email_notification_profiles_list(opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_list: #{e}"
end
```

#### Using the email_notification_profiles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedEmailNotificationProfileList>, Integer, Hash)> email_notification_profiles_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedEmailNotificationProfileList>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_list_with_http_info: #{e}"
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

[**PaginatedEmailNotificationProfileList**](PaginatedEmailNotificationProfileList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## email_notification_profiles_partial_update

> <EmailNotificationProfile> email_notification_profiles_partial_update(uuid, opts)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  patched_email_notification_profile: CloudReactorAPIClient::PatchedEmailNotificationProfile.new # PatchedEmailNotificationProfile | 
}

begin
  
  result = api_instance.email_notification_profiles_partial_update(uuid, opts)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_partial_update: #{e}"
end
```

#### Using the email_notification_profiles_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailNotificationProfile>, Integer, Hash)> email_notification_profiles_partial_update_with_http_info(uuid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailNotificationProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **patched_email_notification_profile** | [**PatchedEmailNotificationProfile**](PatchedEmailNotificationProfile.md) |  | [optional] |

### Return type

[**EmailNotificationProfile**](EmailNotificationProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## email_notification_profiles_retrieve

> <EmailNotificationProfile> email_notification_profiles_retrieve(uuid)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.email_notification_profiles_retrieve(uuid)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_retrieve: #{e}"
end
```

#### Using the email_notification_profiles_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailNotificationProfile>, Integer, Hash)> email_notification_profiles_retrieve_with_http_info(uuid)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailNotificationProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |

### Return type

[**EmailNotificationProfile**](EmailNotificationProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## email_notification_profiles_update

> <EmailNotificationProfile> email_notification_profiles_update(uuid, email_notification_profile)



### Examples

```ruby
require 'time'
require 'cloudreactor_api_client'
# setup authorization
CloudReactorAPIClient.configure do |config|
  # Configure Bearer authorization: tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CloudReactorAPIClient::EmailNotificationProfilesApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
email_notification_profile = CloudReactorAPIClient::EmailNotificationProfile.new({name: 'name_example'}) # EmailNotificationProfile | 

begin
  
  result = api_instance.email_notification_profiles_update(uuid, email_notification_profile)
  p result
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_update: #{e}"
end
```

#### Using the email_notification_profiles_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailNotificationProfile>, Integer, Hash)> email_notification_profiles_update_with_http_info(uuid, email_notification_profile)

```ruby
begin
  
  data, status_code, headers = api_instance.email_notification_profiles_update_with_http_info(uuid, email_notification_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailNotificationProfile>
rescue CloudReactorAPIClient::ApiError => e
  puts "Error when calling EmailNotificationProfilesApi->email_notification_profiles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  |  |
| **email_notification_profile** | [**EmailNotificationProfile**](EmailNotificationProfile.md) |  |  |

### Return type

[**EmailNotificationProfile**](EmailNotificationProfile.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

