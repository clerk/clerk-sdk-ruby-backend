=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'cgi'

module ClerkBackend
  class SignInTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create sign-in token
    # Creates a new sign-in token and associates it with the given user. By default, sign-in tokens expire in 30 days. You can optionally supply a different duration in seconds using the `expires_in_seconds` property.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSignInTokenRequest] :create_sign_in_token_request 
    # @return [SignInToken]

    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Create sign-in token
    # Creates a new sign-in token and associates it with the given user. By default, sign-in tokens expire in 30 days. You can optionally supply a different duration in seconds using the &#x60;expires_in_seconds&#x60; property.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSignInTokenRequest] :create_sign_in_token_request 
    # @return [Array<(SignInToken, Integer, Hash)>] SignInToken data, response status code and response headers
    # POST 
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignInTokensApi.create_sign_in_token ...'
      end
      # resource path
      local_var_path = '/sign_in_tokens'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_sign_in_token_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SignInToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SignInTokensApi.create_sign_in_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignInTokensApi#create_sign_in_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke the given sign-in token
    # Revokes a pending sign-in token
    # @param sign_in_token_id [String] The ID of the sign-in token to be revoked
    # @param [Hash] opts the optional parameters
    # @return [SignInToken]

    def revoke(sign_in_token_id, opts = {})
      data, _status_code, _headers = revoke_with_http_info(sign_in_token_id, opts)
      data
    end

    # Revoke the given sign-in token
    # Revokes a pending sign-in token
    # @param sign_in_token_id [String] The ID of the sign-in token to be revoked
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignInToken, Integer, Hash)>] SignInToken data, response status code and response headers
    # POST 
    def revoke_with_http_info(sign_in_token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignInTokensApi.revoke_sign_in_token ...'
      end
      # verify the required parameter 'sign_in_token_id' is set
      if @api_client.config.client_side_validation && sign_in_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'sign_in_token_id' when calling SignInTokensApi.revoke_sign_in_token"
      end
      # resource path
      local_var_path = '/sign_in_tokens/{sign_in_token_id}/revoke'.sub('{' + 'sign_in_token_id' + '}', CGI.escape(sign_in_token_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SignInToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SignInTokensApi.revoke_sign_in_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignInTokensApi#revoke_sign_in_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end