=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.3.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module CloudReactorAPIClient
  class AlertMethodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param uuid [String] 
    # @param alert_method [AlertMethod] 
    # @param [Hash] opts the optional parameters
    # @return [AlertMethod]
    def alert_methods_clone_create(uuid, alert_method, opts = {})
      data, _status_code, _headers = alert_methods_clone_create_with_http_info(uuid, alert_method, opts)
      data
    end

    # @param uuid [String] 
    # @param alert_method [AlertMethod] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AlertMethod, Integer, Hash)>] AlertMethod data, response status code and response headers
    def alert_methods_clone_create_with_http_info(uuid, alert_method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_clone_create ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling AlertMethodsApi.alert_methods_clone_create"
      end
      # verify the required parameter 'alert_method' is set
      if @api_client.config.client_side_validation && alert_method.nil?
        fail ArgumentError, "Missing the required parameter 'alert_method' when calling AlertMethodsApi.alert_methods_clone_create"
      end
      # resource path
      local_var_path = '/alert_methods/{uuid}/clone/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(alert_method)

      # return_type
      return_type = opts[:debug_return_type] || 'AlertMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AlertMethodsApi.alert_methods_clone_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_clone_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param alert_method [AlertMethod] 
    # @param [Hash] opts the optional parameters
    # @return [AlertMethod]
    def alert_methods_create(alert_method, opts = {})
      data, _status_code, _headers = alert_methods_create_with_http_info(alert_method, opts)
      data
    end

    # @param alert_method [AlertMethod] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AlertMethod, Integer, Hash)>] AlertMethod data, response status code and response headers
    def alert_methods_create_with_http_info(alert_method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_create ...'
      end
      # verify the required parameter 'alert_method' is set
      if @api_client.config.client_side_validation && alert_method.nil?
        fail ArgumentError, "Missing the required parameter 'alert_method' when calling AlertMethodsApi.alert_methods_create"
      end
      # resource path
      local_var_path = '/alert_methods/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(alert_method)

      # return_type
      return_type = opts[:debug_return_type] || 'AlertMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AlertMethodsApi.alert_methods_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def alert_methods_destroy(uuid, opts = {})
      alert_methods_destroy_with_http_info(uuid, opts)
      nil
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def alert_methods_destroy_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_destroy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling AlertMethodsApi.alert_methods_destroy"
      end
      # resource path
      local_var_path = '/alert_methods/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
        :operation => :"AlertMethodsApi.alert_methods_destroy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :created_by_group__id 
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [String] :name 
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [String] :run_environment__uuid 
    # @option opts [String] :search A search term.
    # @return [PaginatedAlertMethodList]
    def alert_methods_list(opts = {})
      data, _status_code, _headers = alert_methods_list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :created_by_group__id 
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [String] :name 
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [String] :run_environment__uuid 
    # @option opts [String] :search A search term.
    # @return [Array<(PaginatedAlertMethodList, Integer, Hash)>] PaginatedAlertMethodList data, response status code and response headers
    def alert_methods_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_list ...'
      end
      # resource path
      local_var_path = '/alert_methods/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'created_by_group__id'] = opts[:'created_by_group__id'] if !opts[:'created_by_group__id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'ordering'] = opts[:'ordering'] if !opts[:'ordering'].nil?
      query_params[:'run_environment__uuid'] = opts[:'run_environment__uuid'] if !opts[:'run_environment__uuid'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedAlertMethodList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AlertMethodsApi.alert_methods_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedAlertMethod] :patched_alert_method 
    # @return [AlertMethod]
    def alert_methods_partial_update(uuid, opts = {})
      data, _status_code, _headers = alert_methods_partial_update_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedAlertMethod] :patched_alert_method 
    # @return [Array<(AlertMethod, Integer, Hash)>] AlertMethod data, response status code and response headers
    def alert_methods_partial_update_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_partial_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling AlertMethodsApi.alert_methods_partial_update"
      end
      # resource path
      local_var_path = '/alert_methods/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patched_alert_method'])

      # return_type
      return_type = opts[:debug_return_type] || 'AlertMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AlertMethodsApi.alert_methods_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [AlertMethod]
    def alert_methods_retrieve(uuid, opts = {})
      data, _status_code, _headers = alert_methods_retrieve_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AlertMethod, Integer, Hash)>] AlertMethod data, response status code and response headers
    def alert_methods_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling AlertMethodsApi.alert_methods_retrieve"
      end
      # resource path
      local_var_path = '/alert_methods/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:debug_return_type] || 'AlertMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AlertMethodsApi.alert_methods_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param alert_method [AlertMethod] 
    # @param [Hash] opts the optional parameters
    # @return [AlertMethod]
    def alert_methods_update(uuid, alert_method, opts = {})
      data, _status_code, _headers = alert_methods_update_with_http_info(uuid, alert_method, opts)
      data
    end

    # @param uuid [String] 
    # @param alert_method [AlertMethod] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AlertMethod, Integer, Hash)>] AlertMethod data, response status code and response headers
    def alert_methods_update_with_http_info(uuid, alert_method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertMethodsApi.alert_methods_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling AlertMethodsApi.alert_methods_update"
      end
      # verify the required parameter 'alert_method' is set
      if @api_client.config.client_side_validation && alert_method.nil?
        fail ArgumentError, "Missing the required parameter 'alert_method' when calling AlertMethodsApi.alert_methods_update"
      end
      # resource path
      local_var_path = '/alert_methods/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(alert_method)

      # return_type
      return_type = opts[:debug_return_type] || 'AlertMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AlertMethodsApi.alert_methods_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertMethodsApi#alert_methods_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
