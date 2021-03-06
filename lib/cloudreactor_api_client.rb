=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.3.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'cloudreactor_api_client/api_client'
require 'cloudreactor_api_client/api_error'
require 'cloudreactor_api_client/version'
require 'cloudreactor_api_client/configuration'

# Models
require 'cloudreactor_api_client/models/alert_method'
require 'cloudreactor_api_client/models/aws_ecs_execution_method'
require 'cloudreactor_api_client/models/aws_ecs_execution_method_capability'
require 'cloudreactor_api_client/models/aws_ecs_launch_type'
require 'cloudreactor_api_client/models/aws_ecs_run_environment_execution_method_capability'
require 'cloudreactor_api_client/models/aws_ecs_service_load_balancer_details'
require 'cloudreactor_api_client/models/aws_ecs_service_options'
require 'cloudreactor_api_client/models/current_service_info'
require 'cloudreactor_api_client/models/email_notification_profile'
require 'cloudreactor_api_client/models/execution_method_capability'
require 'cloudreactor_api_client/models/failure_behavior_enum'
require 'cloudreactor_api_client/models/group'
require 'cloudreactor_api_client/models/link'
require 'cloudreactor_api_client/models/name_and_uuid'
require 'cloudreactor_api_client/models/notification_severity'
require 'cloudreactor_api_client/models/pager_duty_profile'
require 'cloudreactor_api_client/models/paginated_alert_method_list'
require 'cloudreactor_api_client/models/paginated_email_notification_profile_list'
require 'cloudreactor_api_client/models/paginated_pager_duty_profile_list'
require 'cloudreactor_api_client/models/paginated_run_environment_list'
require 'cloudreactor_api_client/models/paginated_task_execution_list'
require 'cloudreactor_api_client/models/paginated_task_list'
require 'cloudreactor_api_client/models/paginated_workflow_execution_summary_list'
require 'cloudreactor_api_client/models/paginated_workflow_summary_list'
require 'cloudreactor_api_client/models/paginated_workflow_task_instance_list'
require 'cloudreactor_api_client/models/paginated_workflow_transition_list'
require 'cloudreactor_api_client/models/patched_alert_method'
require 'cloudreactor_api_client/models/patched_email_notification_profile'
require 'cloudreactor_api_client/models/patched_pager_duty_profile'
require 'cloudreactor_api_client/models/patched_run_environment'
require 'cloudreactor_api_client/models/patched_task'
require 'cloudreactor_api_client/models/patched_task_execution'
require 'cloudreactor_api_client/models/patched_workflow'
require 'cloudreactor_api_client/models/patched_workflow_execution'
require 'cloudreactor_api_client/models/patched_workflow_task_instance'
require 'cloudreactor_api_client/models/patched_workflow_transition'
require 'cloudreactor_api_client/models/propagate_tags_enum'
require 'cloudreactor_api_client/models/rule_type_enum'
require 'cloudreactor_api_client/models/run_environment'
require 'cloudreactor_api_client/models/start_transition_condition_enum'
require 'cloudreactor_api_client/models/stop_reason_enum'
require 'cloudreactor_api_client/models/task'
require 'cloudreactor_api_client/models/task_execution'
require 'cloudreactor_api_client/models/task_execution_status'
require 'cloudreactor_api_client/models/threshold_property_enum'
require 'cloudreactor_api_client/models/timeout_behavior_enum'
require 'cloudreactor_api_client/models/unknown_execution_method_capability'
require 'cloudreactor_api_client/models/workflow'
require 'cloudreactor_api_client/models/workflow_execution'
require 'cloudreactor_api_client/models/workflow_execution_run_reason'
require 'cloudreactor_api_client/models/workflow_execution_status'
require 'cloudreactor_api_client/models/workflow_execution_stop_reason'
require 'cloudreactor_api_client/models/workflow_execution_summary'
require 'cloudreactor_api_client/models/workflow_summary'
require 'cloudreactor_api_client/models/workflow_task_instance'
require 'cloudreactor_api_client/models/workflow_task_instance_execution'
require 'cloudreactor_api_client/models/workflow_task_instance_execution_base'
require 'cloudreactor_api_client/models/workflow_transition'
require 'cloudreactor_api_client/models/workflow_transition_evaluation'

# APIs
require 'cloudreactor_api_client/api/alert_methods_api'
require 'cloudreactor_api_client/api/email_notification_profiles_api'
require 'cloudreactor_api_client/api/pagerduty_profiles_api'
require 'cloudreactor_api_client/api/run_environments_api'
require 'cloudreactor_api_client/api/task_executions_api'
require 'cloudreactor_api_client/api/tasks_api'
require 'cloudreactor_api_client/api/workflow_executions_api'
require 'cloudreactor_api_client/api/workflow_task_instances_api'
require 'cloudreactor_api_client/api/workflow_transitions_api'
require 'cloudreactor_api_client/api/workflows_api'

module CloudReactorAPIClient
  class << self
    # Customize default settings for the SDK using block.
    #   CloudReactorAPIClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
