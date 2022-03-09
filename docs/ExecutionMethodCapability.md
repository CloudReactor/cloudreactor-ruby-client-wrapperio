# CloudReactorAPIClient::ExecutionMethodCapability

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'cloudreactor_api_client'

CloudReactorAPIClient::ExecutionMethodCapability.openapi_one_of
# =>
# [
#   :'AwsEcsExecutionMethodCapability',
#   :'UnknownExecutionMethodCapability'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'cloudreactor_api_client'

CloudReactorAPIClient::ExecutionMethodCapability.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'cloudreactor_api_client'

CloudReactorAPIClient::ExecutionMethodCapability.openapi_discriminator_mapping
# =>
# {
#   :'AWS ECS' => :'AwsEcsExecutionMethodCapability',
#   :'Unknown' => :'UnknownExecutionMethodCapability'
# }

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'cloudreactor_api_client'

CloudReactorAPIClient::ExecutionMethodCapability.build(data)
# => #<AwsEcsExecutionMethodCapability:0x00007fdd4aab02a0>

CloudReactorAPIClient::ExecutionMethodCapability.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AwsEcsExecutionMethodCapability`
- `UnknownExecutionMethodCapability`
- `nil` (if no type matches)

