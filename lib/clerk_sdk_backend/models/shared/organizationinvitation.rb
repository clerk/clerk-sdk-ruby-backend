# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # An organization invitation
    class OrganizationInvitation < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation.
      field :created_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :email_address, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('email_address') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }
      # String representing the object's type. Objects of the same type share the same value.
      # 
      field :object, T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationObject), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::OrganizationInvitationObject, true) } }

      field :organization_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('organization_id') } }

      field :private_metadata, T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationPrivateMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('private_metadata') } }

      field :public_metadata, T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationPublicMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_metadata') } }

      field :role, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('role') } }

      field :role_name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('role_name') } }

      field :status, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('status') } }
      # Unix timestamp of last update.
      field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }


      sig { params(created_at: T.nilable(::Integer), email_address: T.nilable(::String), id: T.nilable(::String), object: T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationObject), organization_id: T.nilable(::String), private_metadata: T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationPrivateMetadata), public_metadata: T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationPublicMetadata), role: T.nilable(::String), role_name: T.nilable(::String), status: T.nilable(::String), updated_at: T.nilable(::Integer)).void }
      def initialize(created_at: nil, email_address: nil, id: nil, object: nil, organization_id: nil, private_metadata: nil, public_metadata: nil, role: nil, role_name: nil, status: nil, updated_at: nil)
        @created_at = created_at
        @email_address = email_address
        @id = id
        @object = object
        @organization_id = organization_id
        @private_metadata = private_metadata
        @public_metadata = public_metadata
        @role = role
        @role_name = role_name
        @status = status
        @updated_at = updated_at
      end
    end
  end
end
