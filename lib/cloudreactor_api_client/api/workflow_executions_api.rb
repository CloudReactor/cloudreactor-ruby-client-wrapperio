=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.2.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module CloudReactorAPIClient
  class WorkflowExecutionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowExecution]
    def workflow_executions_create(workflow_execution, opts = {})
      data, _status_code, _headers = workflow_executions_create_with_http_info(workflow_execution, opts)
      data
    end

    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowExecution, Integer, Hash)>] WorkflowExecution data, response status code and response headers
    def workflow_executions_create_with_http_info(workflow_execution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_create ...'
      end
      # verify the required parameter 'workflow_execution' is set
      if @api_client.config.client_side_validation && workflow_execution.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_execution' when calling WorkflowExecutionsApi.workflow_executions_create"
      end
      # resource path
      local_var_path = '/workflow_executions/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_execution)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowExecution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def workflow_executions_destroy(uuid, opts = {})
      workflow_executions_destroy_with_http_info(uuid, opts)
      nil
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def workflow_executions_destroy_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_destroy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowExecutionsApi.workflow_executions_destroy"
      end
      # resource path
      local_var_path = '/workflow_executions/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
        :operation => :"WorkflowExecutionsApi.workflow_executions_destroy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [String] :search A search term.
    # @option opts [String] :workflow__created_by_group__id 
    # @option opts [String] :workflow__uuid 
    # @return [PaginatedWorkflowExecutionSummaryList]
    def workflow_executions_list(opts = {})
      data, _status_code, _headers = workflow_executions_list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [String] :search A search term.
    # @option opts [String] :workflow__created_by_group__id 
    # @option opts [String] :workflow__uuid 
    # @return [Array<(PaginatedWorkflowExecutionSummaryList, Integer, Hash)>] PaginatedWorkflowExecutionSummaryList data, response status code and response headers
    def workflow_executions_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_list ...'
      end
      # resource path
      local_var_path = '/workflow_executions/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'ordering'] = opts[:'ordering'] if !opts[:'ordering'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'workflow__created_by_group__id'] = opts[:'workflow__created_by_group__id'] if !opts[:'workflow__created_by_group__id'].nil?
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
      return_type = opts[:debug_return_type] || 'PaginatedWorkflowExecutionSummaryList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedWorkflowExecution] :patched_workflow_execution 
    # @return [WorkflowExecution]
    def workflow_executions_partial_update(uuid, opts = {})
      data, _status_code, _headers = workflow_executions_partial_update_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedWorkflowExecution] :patched_workflow_execution 
    # @return [Array<(WorkflowExecution, Integer, Hash)>] WorkflowExecution data, response status code and response headers
    def workflow_executions_partial_update_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_partial_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowExecutionsApi.workflow_executions_partial_update"
      end
      # resource path
      local_var_path = '/workflow_executions/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patched_workflow_execution'])

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowExecution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowExecution]
    def workflow_executions_retrieve(uuid, opts = {})
      data, _status_code, _headers = workflow_executions_retrieve_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowExecution, Integer, Hash)>] WorkflowExecution data, response status code and response headers
    def workflow_executions_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowExecutionsApi.workflow_executions_retrieve"
      end
      # resource path
      local_var_path = '/workflow_executions/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:debug_return_type] || 'WorkflowExecution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowExecution]
    def workflow_executions_retry_create(uuid, workflow_execution, opts = {})
      data, _status_code, _headers = workflow_executions_retry_create_with_http_info(uuid, workflow_execution, opts)
      data
    end

    # @param uuid [String] 
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowExecution, Integer, Hash)>] WorkflowExecution data, response status code and response headers
    def workflow_executions_retry_create_with_http_info(uuid, workflow_execution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_retry_create ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowExecutionsApi.workflow_executions_retry_create"
      end
      # verify the required parameter 'workflow_execution' is set
      if @api_client.config.client_side_validation && workflow_execution.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_execution' when calling WorkflowExecutionsApi.workflow_executions_retry_create"
      end
      # resource path
      local_var_path = '/workflow_executions/{uuid}/retry/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_execution)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowExecution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_retry_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_retry_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowExecution]
    def workflow_executions_update(uuid, workflow_execution, opts = {})
      data, _status_code, _headers = workflow_executions_update_with_http_info(uuid, workflow_execution, opts)
      data
    end

    # @param uuid [String] 
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowExecution, Integer, Hash)>] WorkflowExecution data, response status code and response headers
    def workflow_executions_update_with_http_info(uuid, workflow_execution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowExecutionsApi.workflow_executions_update"
      end
      # verify the required parameter 'workflow_execution' is set
      if @api_client.config.client_side_validation && workflow_execution.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_execution' when calling WorkflowExecutionsApi.workflow_executions_update"
      end
      # resource path
      local_var_path = '/workflow_executions/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_execution)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowExecution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowExecution]
    def workflow_executions_workflow_task_instance_executions_create(uuid, workflow_execution, opts = {})
      data, _status_code, _headers = workflow_executions_workflow_task_instance_executions_create_with_http_info(uuid, workflow_execution, opts)
      data
    end

    # @param uuid [String] 
    # @param workflow_execution [WorkflowExecution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowExecution, Integer, Hash)>] WorkflowExecution data, response status code and response headers
    def workflow_executions_workflow_task_instance_executions_create_with_http_info(uuid, workflow_execution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowExecutionsApi.workflow_executions_workflow_task_instance_executions_create ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WorkflowExecutionsApi.workflow_executions_workflow_task_instance_executions_create"
      end
      # verify the required parameter 'workflow_execution' is set
      if @api_client.config.client_side_validation && workflow_execution.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_execution' when calling WorkflowExecutionsApi.workflow_executions_workflow_task_instance_executions_create"
      end
      # resource path
      local_var_path = '/workflow_executions/{uuid}/workflow_task_instance_executions/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_execution)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowExecution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"WorkflowExecutionsApi.workflow_executions_workflow_task_instance_executions_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowExecutionsApi#workflow_executions_workflow_task_instance_executions_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
