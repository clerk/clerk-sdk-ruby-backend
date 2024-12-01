# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class UpdateOrganizationRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # If true, an admin can delete this organization with the Frontend API.
      field :admin_delete_enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('admin_delete_enabled') } }
      # A custom date/time denoting _when_ the organization was created, specified in RFC3339 format (e.g. `2012-10-20T07:15:20.902Z`).
      field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }
      # The maximum number of memberships allowed for this organization
      field :max_allowed_memberships, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('max_allowed_memberships') } }
      # The new name of the organization.
      # May not contain URLs or HTML.
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }
      # Metadata saved on the organization that is only visible to your backend.
      field :private_metadata, T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationPrivateMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('private_metadata') } }
      # Metadata saved on the organization, that is visible to both your frontend and backend.
      field :public_metadata, T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationPublicMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_metadata') } }
      # The new slug of the organization, which needs to be unique in the instance
      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('slug') } }


      sig { params(admin_delete_enabled: T.nilable(T::Boolean), created_at: T.nilable(::String), max_allowed_memberships: T.nilable(::Integer), name: T.nilable(::String), private_metadata: T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationPrivateMetadata), public_metadata: T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationPublicMetadata), slug: T.nilable(::String)).void }
      def initialize(admin_delete_enabled: nil, created_at: nil, max_allowed_memberships: nil, name: nil, private_metadata: nil, public_metadata: nil, slug: nil)
        @admin_delete_enabled = admin_delete_enabled
        @created_at = created_at
        @max_allowed_memberships = max_allowed_memberships
        @name = name
        @private_metadata = private_metadata
        @public_metadata = public_metadata
        @slug = slug
      end
    end
  end
end
