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
  class ClientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a client
    # Returns the details of a client.
    # @param client_id [String] Client ID.
    # @param [Hash] opts the optional parameters
    # @return [Client]

    def find(client_id, opts = {})
      data, _status_code, _headers = find_with_http_info(client_id, opts)
      data
    end

    # Get a client
    # Returns the details of a client.
    # @param client_id [String] Client ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Integer, Hash)>] Client data, response status code and response headers
    # GET 
    def find_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.get_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.get_client"
      end
      # resource path
      local_var_path = '/clients/{client_id}'.sub('{' + 'client_id' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Client'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ClientsApi.get_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#get_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all clients
    # Returns a list of all clients. The clients are returned sorted by creation date, with the newest clients appearing first. Warning: the endpoint is being deprecated and will be removed in future versions.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<Client>]

    def all(opts = {})
      data, _status_code, _headers = all_with_http_info(opts)
      data
    end

    # List all clients
    # Returns a list of all clients. The clients are returned sorted by creation date, with the newest clients appearing first. Warning: the endpoint is being deprecated and will be removed in future versions.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<(Array<Client>, Integer, Hash)>] Array<Client> data, response status code and response headers
    # GET array
    def all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.get_client_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientsApi.get_client_list, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientsApi.get_client_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ClientsApi.get_client_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/clients'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Client>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ClientsApi.get_client_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#get_client_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify a client
    # Verifies the client in the provided token
    # @param [Hash] opts the optional parameters
    # @option opts [VerifyClientRequest] :verify_client_request Parameters.
    # @return [Client]

    def verify(opts = {})
      data, _status_code, _headers = verify_with_http_info(opts)
      data
    end

    # Verify a client
    # Verifies the client in the provided token
    # @param [Hash] opts the optional parameters
    # @option opts [VerifyClientRequest] :verify_client_request Parameters.
    # @return [Array<(Client, Integer, Hash)>] Client data, response status code and response headers
    # POST 
    def verify_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.verify_client ...'
      end
      # resource path
      local_var_path = '/clients/verify'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'verify_client_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Client'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ClientsApi.verify_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#verify_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
