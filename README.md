# cloudreactor-ruby-client-wrapperio

![Ruby CI](https://github.com/CloudReactor/cloudreactor-ruby-client-wrapperio/workflows/Ruby%20CI/badge.svg?branch=master)
![GitHub](https://img.shields.io/github/license/CloudReactor/cloudreactor-ruby-client-wrapperio)

## Overview

This Ruby gem consists of 2 parts:

1) The CloudReactor API client allows ruby applications to programmatically
   create, monitor, and manage Tasks and Workflows. Most notably you can start and stop
   Tasks and Workflows by creating Task Executions and Workflow Executions.

2) The Wrapper I/O module allows ruby applications to communicate with the
   [CloudReactor wrapper](https://github.com/CloudReactor/cloudreactor-procwrapper)
   which is the parent process.

See the [CloudReactor landing page](https://www.cloudreactor.io/) to see the
benefits of monitoring and managing your tasks with CloudReactor.

## API client

The API client allows your program to control various entities in CloudReactor,
most notable Tasks and Workflows. The code and 
[documentation](CloudReactor%20API%20Client.md) are generated by 
[OpenAPI generator](https://github.com/OpenAPITools/openapi-generator). 

To start an existing Task, create a  TaskExecution linked to the Task, with a 
status of `CloudReactorAPIClient::TaskExecutionStatus::MANUALLY_STARTED`:

```ruby
config = CloudReactorAPIClient::Configuration.new
config.api_key['tokenAuth'] = 'YOUR API KEY'
api_client = CloudReactorAPIClient::ApiClient.new(config)

task = CloudReactorAPIClient::NameAndUuid.new
task.name = 'Sample Task'
task_execution = CloudReactorAPIClient::TaskExecution.new
task_execution.task = task
task_execution.status = CloudReactorAPIClient::TaskExecutionStatus::MANUALLY_STARTED
te_api = CloudReactorAPIClient::TaskExecutionsApi.new(api_client)
te_api.task_executions_create(task_execution)
```

## Wrapper I/O

While running a ruby process that is wrapped by the CloudReactor proc_wrapper,
you can use `CloudReactorWrapperIO::StatusUpdater` to
send updates about your process to the wrapper. The wrapper will send those
updates to the CloudReactor API server during its next heartbeat.
Updates can include:

* success count
* error count
* skipped count
* expected count
* last status message
* any additional properties that can be serialized into JSON

Updates are communicated via a local UDP socket which means they are
theoretically unreliable. However, in practice, updates are almost always
picked up correctly.

### Example usage

```ruby
# Use the environment variables 
# PROC_WRAPPER_ENABLE_STATUS_UPDATE_LISTENER
# PROC_WRAPPER_STATUS_UPDATE_SOCKET_PORT
# PROC_WRAPPER_STATUS_UPDATE_SOCKET_BIND_PORT
# to determine configuration. These environment variables are typically passed
# to the proc_wrapper module which then passes them on to your process.
status_updater = new CloudReactorWrapperIO::StatusUpdater()

begin 
  status_updater.send_update(
    success_count: 1,
    error_count: 2,
    last_status_message: 'running'
  )  
ensure
  status_updater.close()      
end
```

## More documentation

* [CloudReactor API documentation](https://apidocs.cloudreactor.io/)

## License

This project is covered by the [BSD 2-clause license](https://opensource.org/licenses/BSD-2-Clause).

