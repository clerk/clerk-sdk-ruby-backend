# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module ClerkSDKBackend
  extend T::Sig
  class SignInTokens
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: ::ClerkSDKBackend::Operations::CreateSignInTokenRequestBody).returns(::ClerkSDKBackend::Operations::CreateSignInTokenResponse) }
    def create(request)
      # create - Create sign-in token
      # Creates a new sign-in token and associates it with the given user.
      # By default, sign-in tokens expire in 30 days.
      # You can optionally supply a different duration in seconds using the `expires_in_seconds` property.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/sign_in_tokens"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::CreateSignInTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::SignInToken)
          res.sign_in_token = out
        end
      elsif [404, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(sign_in_token_id: ::String).returns(::ClerkSDKBackend::Operations::RevokeSignInTokenResponse) }
    def delete(sign_in_token_id)
      # delete - Revoke the given sign-in token
      # Revokes a pending sign-in token
      request = ::ClerkSDKBackend::Operations::RevokeSignInTokenRequest.new(
        
        sign_in_token_id: sign_in_token_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::RevokeSignInTokenRequest,
        base_url,
        '/sign_in_tokens/{sign_in_token_id}/revoke',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::RevokeSignInTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::SignInToken)
          res.sign_in_token = out
        end
      elsif [400, 404].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end
  end
end
