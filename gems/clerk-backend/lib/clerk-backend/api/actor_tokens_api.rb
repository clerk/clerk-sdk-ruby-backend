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
  class ActorTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create actor token
    # Create an actor token that can be used to impersonate the given user. The `actor` parameter needs to include at least a \"sub\" key whose value is the ID of the actor (impersonating) user.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateActorTokenRequest] :create_actor_token_request 
    # @return [ActorToken]

    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Create actor token
    # Create an actor token that can be used to impersonate the given user. The &#x60;actor&#x60; parameter needs to include at least a \&quot;sub\&quot; key whose value is the ID of the actor (impersonating) user.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateActorTokenRequest] :create_actor_token_request 
    # @return [Array<(ActorToken, Integer, Hash)>] ActorToken data, response status code and response headers
    # POST 
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActorTokensApi.create_actor_token ...'
      end
      # resource path
      local_var_path = '/actor_tokens'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_actor_token_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ActorToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ActorTokensApi.create_actor_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActorTokensApi#create_actor_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke actor token
    # Revokes a pending actor token.
    # @param actor_token_id [String] The ID of the actor token to be revoked.
    # @param [Hash] opts the optional parameters
    # @return [ActorToken]

    def revoke(actor_token_id, opts = {})
      data, _status_code, _headers = revoke_with_http_info(actor_token_id, opts)
      data
    end

    # Revoke actor token
    # Revokes a pending actor token.
    # @param actor_token_id [String] The ID of the actor token to be revoked.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActorToken, Integer, Hash)>] ActorToken data, response status code and response headers
    # POST 
    def revoke_with_http_info(actor_token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActorTokensApi.revoke_actor_token ...'
      end
      # verify the required parameter 'actor_token_id' is set
      if @api_client.config.client_side_validation && actor_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'actor_token_id' when calling ActorTokensApi.revoke_actor_token"
      end
      # resource path
      local_var_path = '/actor_tokens/{actor_token_id}/revoke'.sub('{' + 'actor_token_id' + '}', CGI.escape(actor_token_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ActorToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ActorTokensApi.revoke_actor_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActorTokensApi#revoke_actor_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
