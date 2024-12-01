# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class VerifyTOTPRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :request_body, ::ClerkSDKBackend::Operations::VerifyTOTPRequestBody, { 'request': { 'media_type': 'application/json' } }
      # The ID of the user for whom to verify the TOTP
      field :user_id, ::String, { 'path_param': { 'field_name': 'user_id', 'style': 'simple', 'explode': false } }


      sig { params(request_body: ::ClerkSDKBackend::Operations::VerifyTOTPRequestBody, user_id: ::String).void }
      def initialize(request_body: nil, user_id: nil)
        @request_body = request_body
        @user_id = user_id
      end
    end
  end
end
