# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class CreateOrganizationInvitationRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the organization for which to send the invitation
      field :organization_id, ::String, { 'path_param': { 'field_name': 'organization_id', 'style': 'simple', 'explode': false } }

      field :request_body, ::ClerkSDKBackend::Operations::CreateOrganizationInvitationRequestBody, { 'request': { 'media_type': 'application/json' } }


      sig { params(organization_id: ::String, request_body: ::ClerkSDKBackend::Operations::CreateOrganizationInvitationRequestBody).void }
      def initialize(organization_id: nil, request_body: nil)
        @organization_id = organization_id
        @request_body = request_body
      end
    end
  end
end
