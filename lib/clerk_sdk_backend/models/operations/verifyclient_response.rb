# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class VerifyClientResponse < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Request was not successful
      field :clerk_errors, T.nilable(::ClerkSDKBackend::Shared::ClerkErrors)
      # Success
      field :client, T.nilable(::ClerkSDKBackend::Shared::Client)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, clerk_errors: T.nilable(::ClerkSDKBackend::Shared::ClerkErrors), client: T.nilable(::ClerkSDKBackend::Shared::Client)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, clerk_errors: nil, client: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @clerk_errors = clerk_errors
        @client = client
      end
    end
  end
end
