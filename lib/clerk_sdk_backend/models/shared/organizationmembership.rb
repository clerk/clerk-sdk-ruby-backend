# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # Hello world
    class OrganizationMembership < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation.
      field :created_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }
      # String representing the object's type. Objects of the same type share the same value.
      # 
      field :object, T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipObject), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::OrganizationMembershipObject, true) } }

      field :organization, T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipOrganization), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('organization') } }

      field :permissions, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('permissions') } }
      # Metadata saved on the organization membership, accessible only from the Backend API
      field :private_metadata, T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipPrivateMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('private_metadata') } }
      # Metadata saved on the organization membership, accessible from both Frontend and Backend APIs
      field :public_metadata, T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipPublicMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_metadata') } }

      field :public_user_data, T.nilable(::ClerkSDKBackend::Shared::PublicUserData), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_user_data') } }

      field :role, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('role') } }

      field :role_name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('role_name') } }
      # Unix timestamp of last update.
      field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }


      sig { params(created_at: T.nilable(::Integer), id: T.nilable(::String), object: T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipObject), organization: T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipOrganization), permissions: T.nilable(T::Array[::String]), private_metadata: T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipPrivateMetadata), public_metadata: T.nilable(::ClerkSDKBackend::Shared::OrganizationMembershipPublicMetadata), public_user_data: T.nilable(::ClerkSDKBackend::Shared::PublicUserData), role: T.nilable(::String), role_name: T.nilable(::String), updated_at: T.nilable(::Integer)).void }
      def initialize(created_at: nil, id: nil, object: nil, organization: nil, permissions: nil, private_metadata: nil, public_metadata: nil, public_user_data: nil, role: nil, role_name: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @object = object
        @organization = organization
        @permissions = permissions
        @private_metadata = private_metadata
        @public_metadata = public_metadata
        @public_user_data = public_user_data
        @role = role
        @role_name = role_name
        @updated_at = updated_at
      end
    end
  end
end
