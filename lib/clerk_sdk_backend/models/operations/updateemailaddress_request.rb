# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class UpdateEmailAddressRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the email address to update
      field :email_address_id, ::String, { 'path_param': { 'field_name': 'email_address_id', 'style': 'simple', 'explode': false } }

      field :request_body, ::ClerkSDKBackend::Operations::UpdateEmailAddressRequestBody, { 'request': { 'media_type': 'application/json' } }


      sig { params(email_address_id: ::String, request_body: ::ClerkSDKBackend::Operations::UpdateEmailAddressRequestBody).void }
      def initialize(email_address_id: nil, request_body: nil)
        @email_address_id = email_address_id
        @request_body = request_body
      end
    end
  end
end
