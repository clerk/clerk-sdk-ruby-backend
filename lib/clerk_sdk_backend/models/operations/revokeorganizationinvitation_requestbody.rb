# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class RevokeOrganizationInvitationRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the user that revokes the invitation.
      # Must be an administrator in the organization.
      field :requesting_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('requesting_user_id') } }


      sig { params(requesting_user_id: T.nilable(::String)).void }
      def initialize(requesting_user_id: nil)
        @requesting_user_id = requesting_user_id
      end
    end
  end
end
