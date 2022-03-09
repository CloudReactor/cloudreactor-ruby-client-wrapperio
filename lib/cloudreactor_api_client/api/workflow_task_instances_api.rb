=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.2.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module CloudReactorAPIClient
  class WorkflowTaskInstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param workflow_task_instance [WorkflowTaskInstance] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowTaskInstance]
    def workflow_task_instances_create(workflow_task_instance, opts = {})
      data, _status_code, _headers = workflow_task_instances_create_with_http_info(workflow_task_instance, opts)
      data
    end

    # @param workflow_task_instance [WorkflowTaskInstance] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowTaskInstance, Integer, Hash)>] WorkflowTaskInstance data, response status code and response headers
    def workflow_task_instances_create_with_http_info(workflow_task_instance, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTaskInstancesApi.workflow_task_instances_create ...'
      end
      # verify the required parameter 'workflow_task_instance' is set
      if @api_client.config.client_side_validation && workflow_task_instance.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_task_instance' when calling WorkflowTaskInstancesApi.workflow_task_instances_create"
      end
      # resource path
      local_var_path = '/workflow_task_instances/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_task_instance)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowTaskInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTaskInstancesApi.workflow_task_instances_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTaskInstancesApi#workflow_task_instances_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def workflow_task_instances_destroy(uuid, opts = {})
      workflow_task_instances_destroy_with_http_info(uuid, opts)
      nil
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def workflow_task_instances_destroy_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTaskInstancesApi.workflow_task_instances_destroy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowTaskInstancesApi.workflow_task_instances_destroy"
      end
      # resource path
      local_var_path = '/workflow_task_instances/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTaskInstancesApi.workflow_task_instances_destroy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTaskInstancesApi#workflow_task_instances_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :description 
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [String] :name 
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [String] :search A search term.
    # @option opts [String] :task__name 
    # @option opts [String] :task__uuid 
    # @option opts [Integer] :workflow__created_by_group__id 
    # @option opts [String] :workflow__run_environment__uuid 
    # @option opts [String] :workflow__uuid 
    # @return [PaginatedWorkflowTaskInstanceList]
    def workflow_task_instances_list(opts = {})
      data, _status_code, _headers = workflow_task_instances_list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :description 
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [String] :name 
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [String] :search A search term.
    # @option opts [String] :task__name 
    # @option opts [String] :task__uuid 
    # @option opts [Integer] :workflow__created_by_group__id 
    # @option opts [String] :workflow__run_environment__uuid 
    # @option opts [String] :workflow__uuid 
    # @return [Array<(PaginatedWorkflowTaskInstanceList, Integer, Hash)>] PaginatedWorkflowTaskInstanceList data, response status code and response headers
    def workflow_task_instances_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTaskInstancesApi.workflow_task_instances_list ...'
      end
      # resource path
      local_var_path = '/workflow_task_instances/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'ordering'] = opts[:'ordering'] if !opts[:'ordering'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'task__name'] = opts[:'task__name'] if !opts[:'task__name'].nil?
      query_params[:'task__uuid'] = opts[:'task__uuid'] if !opts[:'task__uuid'].nil?
      query_params[:'workflow__created_by_group__id'] = opts[:'workflow__created_by_group__id'] if !opts[:'workflow__created_by_group__id'].nil?
      query_params[:'workflow__run_environment__uuid'] = opts[:'workflow__run_environment__uuid'] if !opts[:'workflow__run_environment__uuid'].nil?
      query_params[:'workflow__uuid'] = opts[:'workflow__uuid'] if !opts[:'workflow__uuid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedWorkflowTaskInstanceList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTaskInstancesApi.workflow_task_instances_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTaskInstancesApi#workflow_task_instances_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedWorkflowTaskInstance] :patched_workflow_task_instance 
    # @return [WorkflowTaskInstance]
    def workflow_task_instances_partial_update(uuid, opts = {})
      data, _status_code, _headers = workflow_task_instances_partial_update_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedWorkflowTaskInstance] :patched_workflow_task_instance 
    # @return [Array<(WorkflowTaskInstance, Integer, Hash)>] WorkflowTaskInstance data, response status code and response headers
    def workflow_task_instances_partial_update_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTaskInstancesApi.workflow_task_instances_partial_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowTaskInstancesApi.workflow_task_instances_partial_update"
      end
      # resource path
      local_var_path = '/workflow_task_instances/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patched_workflow_task_instance'])

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowTaskInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTaskInstancesApi.workflow_task_instances_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTaskInstancesApi#workflow_task_instances_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowTaskInstance]
    def workflow_task_instances_retrieve(uuid, opts = {})
      data, _status_code, _headers = workflow_task_instances_retrieve_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowTaskInstance, Integer, Hash)>] WorkflowTaskInstance data, response status code and response headers
    def workflow_task_instances_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTaskInstancesApi.workflow_task_instances_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowTaskInstancesApi.workflow_task_instances_retrieve"
      end
      # resource path
      local_var_path = '/workflow_task_instances/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowTaskInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTaskInstancesApi.workflow_task_instances_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTaskInstancesApi#workflow_task_instances_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param workflow_task_instance [WorkflowTaskInstance] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowTaskInstance]
    def workflow_task_instances_update(uuid, workflow_task_instance, opts = {})
      data, _status_code, _headers = workflow_task_instances_update_with_http_info(uuid, workflow_task_instance, opts)
      data
    end

    # @param uuid [String] 
    # @param workflow_task_instance [WorkflowTaskInstance] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowTaskInstance, Integer, Hash)>] WorkflowTaskInstance data, response status code and response headers
    def workflow_task_instances_update_with_http_info(uuid, workflow_task_instance, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTaskInstancesApi.workflow_task_instances_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowTaskInstancesApi.workflow_task_instances_update"
      end
      # verify the required parameter 'workflow_task_instance' is set
      if @api_client.config.client_side_validation && workflow_task_instance.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_task_instance' when calling WorkflowTaskInstancesApi.workflow_task_instances_update"
      end
      # resource path
      local_var_path = '/workflow_task_instances/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_task_instance)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowTaskInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTaskInstancesApi.workflow_task_instances_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTaskInstancesApi#workflow_task_instances_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
