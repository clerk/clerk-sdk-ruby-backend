=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module ClerkBackend
  class InstanceSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update instance settings
    # Updates the settings of an instance
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateInstanceRequest] :update_instance_request 
    # @return [nil]

    
    def update(opts = {})
      update_with_http_info(opts)
      nil
    end

    # Update instance settings
    # Updates the settings of an instance
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateInstanceRequest] :update_instance_request 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    # PATCH 
    def update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceSettingsApi.update_instance ...'
      end
      # resource path
      local_var_path = '/instance'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_instance_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InstanceSettingsApi.update_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceSettingsApi#update_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update instance organization settings
    # Updates the organization settings of the instance
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateInstanceOrganizationSettingsRequest] :update_instance_organization_settings_request 
    # @return [OrganizationSettings]

    
    def update_organization_settings(opts = {})
      data, _status_code, _headers = update_organization_settings_with_http_info(opts)
      data
    end

    # Update instance organization settings
    # Updates the organization settings of the instance
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateInstanceOrganizationSettingsRequest] :update_instance_organization_settings_request 
    # @return [Array<(OrganizationSettings, Integer, Hash)>] OrganizationSettings data, response status code and response headers
    # PATCH 
    def update_organization_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceSettingsApi.update_instance_organization_settings ...'
      end
      # resource path
      local_var_path = '/instance/organization_settings'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_instance_organization_settings_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationSettings'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InstanceSettingsApi.update_instance_organization_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceSettingsApi#update_instance_organization_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update instance restrictions
    # Updates the restriction settings of an instance
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateInstanceRestrictionsRequest] :update_instance_restrictions_request 
    # @return [InstanceRestrictions]

    
    def update_restrictions(opts = {})
      data, _status_code, _headers = update_restrictions_with_http_info(opts)
      data
    end

    # Update instance restrictions
    # Updates the restriction settings of an instance
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateInstanceRestrictionsRequest] :update_instance_restrictions_request 
    # @return [Array<(InstanceRestrictions, Integer, Hash)>] InstanceRestrictions data, response status code and response headers
    # PATCH 
    def update_restrictions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceSettingsApi.update_instance_restrictions ...'
      end
      # resource path
      local_var_path = '/instance/restrictions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_instance_restrictions_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'InstanceRestrictions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InstanceSettingsApi.update_instance_restrictions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceSettingsApi#update_instance_restrictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
