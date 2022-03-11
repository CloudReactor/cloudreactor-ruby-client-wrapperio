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
  class PagerdutyProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param uuid [String] 
    # @param pager_duty_profile [PagerDutyProfile] 
    # @param [Hash] opts the optional parameters
    # @return [PagerDutyProfile]
    def pagerduty_profiles_clone_create(uuid, pager_duty_profile, opts = {})
      data, _status_code, _headers = pagerduty_profiles_clone_create_with_http_info(uuid, pager_duty_profile, opts)
      data
    end

    # @param uuid [String] 
    # @param pager_duty_profile [PagerDutyProfile] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PagerDutyProfile, Integer, Hash)>] PagerDutyProfile data, response status code and response headers
    def pagerduty_profiles_clone_create_with_http_info(uuid, pager_duty_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_clone_create ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PagerdutyProfilesApi.pagerduty_profiles_clone_create"
      end
      # verify the required parameter 'pager_duty_profile' is set
      if @api_client.config.client_side_validation && pager_duty_profile.nil?
        fail ArgumentError, "Missing the required parameter 'pager_duty_profile' when calling PagerdutyProfilesApi.pagerduty_profiles_clone_create"
      end
      # resource path
      local_var_path = '/pagerduty_profiles/{uuid}/clone/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pager_duty_profile)

      # return_type
      return_type = opts[:debug_return_type] || 'PagerDutyProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_clone_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_clone_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param pager_duty_profile [PagerDutyProfile] 
    # @param [Hash] opts the optional parameters
    # @return [PagerDutyProfile]
    def pagerduty_profiles_create(pager_duty_profile, opts = {})
      data, _status_code, _headers = pagerduty_profiles_create_with_http_info(pager_duty_profile, opts)
      data
    end

    # @param pager_duty_profile [PagerDutyProfile] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PagerDutyProfile, Integer, Hash)>] PagerDutyProfile data, response status code and response headers
    def pagerduty_profiles_create_with_http_info(pager_duty_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_create ...'
      end
      # verify the required parameter 'pager_duty_profile' is set
      if @api_client.config.client_side_validation && pager_duty_profile.nil?
        fail ArgumentError, "Missing the required parameter 'pager_duty_profile' when calling PagerdutyProfilesApi.pagerduty_profiles_create"
      end
      # resource path
      local_var_path = '/pagerduty_profiles/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pager_duty_profile)

      # return_type
      return_type = opts[:debug_return_type] || 'PagerDutyProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def pagerduty_profiles_destroy(uuid, opts = {})
      pagerduty_profiles_destroy_with_http_info(uuid, opts)
      nil
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def pagerduty_profiles_destroy_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_destroy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PagerdutyProfilesApi.pagerduty_profiles_destroy"
      end
      # resource path
      local_var_path = '/pagerduty_profiles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_destroy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    # @return [PaginatedPagerDutyProfileList]
    def pagerduty_profiles_list(opts = {})
      data, _status_code, _headers = pagerduty_profiles_list_with_http_info(opts)
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
    # @return [Array<(PaginatedPagerDutyProfileList, Integer, Hash)>] PaginatedPagerDutyProfileList data, response status code and response headers
    def pagerduty_profiles_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_list ...'
      end
      # resource path
      local_var_path = '/pagerduty_profiles/'

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
      return_type = opts[:debug_return_type] || 'PaginatedPagerDutyProfileList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedPagerDutyProfile] :patched_pager_duty_profile 
    # @return [PagerDutyProfile]
    def pagerduty_profiles_partial_update(uuid, opts = {})
      data, _status_code, _headers = pagerduty_profiles_partial_update_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedPagerDutyProfile] :patched_pager_duty_profile 
    # @return [Array<(PagerDutyProfile, Integer, Hash)>] PagerDutyProfile data, response status code and response headers
    def pagerduty_profiles_partial_update_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_partial_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PagerdutyProfilesApi.pagerduty_profiles_partial_update"
      end
      # resource path
      local_var_path = '/pagerduty_profiles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patched_pager_duty_profile'])

      # return_type
      return_type = opts[:debug_return_type] || 'PagerDutyProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [PagerDutyProfile]
    def pagerduty_profiles_retrieve(uuid, opts = {})
      data, _status_code, _headers = pagerduty_profiles_retrieve_with_http_info(uuid, opts)
      data
    end

    # @param uuid [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PagerDutyProfile, Integer, Hash)>] PagerDutyProfile data, response status code and response headers
    def pagerduty_profiles_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PagerdutyProfilesApi.pagerduty_profiles_retrieve"
      end
      # resource path
      local_var_path = '/pagerduty_profiles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:debug_return_type] || 'PagerDutyProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param uuid [String] 
    # @param pager_duty_profile [PagerDutyProfile] 
    # @param [Hash] opts the optional parameters
    # @return [PagerDutyProfile]
    def pagerduty_profiles_update(uuid, pager_duty_profile, opts = {})
      data, _status_code, _headers = pagerduty_profiles_update_with_http_info(uuid, pager_duty_profile, opts)
      data
    end

    # @param uuid [String] 
    # @param pager_duty_profile [PagerDutyProfile] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PagerDutyProfile, Integer, Hash)>] PagerDutyProfile data, response status code and response headers
    def pagerduty_profiles_update_with_http_info(uuid, pager_duty_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerdutyProfilesApi.pagerduty_profiles_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PagerdutyProfilesApi.pagerduty_profiles_update"
      end
      # verify the required parameter 'pager_duty_profile' is set
      if @api_client.config.client_side_validation && pager_duty_profile.nil?
        fail ArgumentError, "Missing the required parameter 'pager_duty_profile' when calling PagerdutyProfilesApi.pagerduty_profiles_update"
      end
      # resource path
      local_var_path = '/pagerduty_profiles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pager_duty_profile)

      # return_type
      return_type = opts[:debug_return_type] || 'PagerDutyProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"PagerdutyProfilesApi.pagerduty_profiles_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerdutyProfilesApi#pagerduty_profiles_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
