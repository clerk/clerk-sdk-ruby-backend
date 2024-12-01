# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class Session < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :abandon_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('abandon_at') } }

      field :client_id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('client_id') } }
      # Unix timestamp of creation.
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :expire_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('expire_at') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :last_active_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('last_active_at') } }
      # String representing the object's type. Objects of the same type share the same value.
      # 
      field :object, ::ClerkSDKBackend::Shared::SessionObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::SessionObject, false) } }

      field :status, ::ClerkSDKBackend::Shared::Status, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::Status, false) } }
      # Unix timestamp of last update.
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :user_id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('user_id') } }

      field :actor, T.nilable(::ClerkSDKBackend::Shared::Actor), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('actor') } }

      field :last_active_organization_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('last_active_organization_id') } }

      field :latest_activity, T.nilable(::ClerkSDKBackend::Shared::LatestActivity), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('latest_activity') } }


      sig { params(abandon_at: ::Integer, client_id: ::String, created_at: ::Integer, expire_at: ::Integer, id: ::String, last_active_at: ::Integer, object: ::ClerkSDKBackend::Shared::SessionObject, status: ::ClerkSDKBackend::Shared::Status, updated_at: ::Integer, user_id: ::String, actor: T.nilable(::ClerkSDKBackend::Shared::Actor), last_active_organization_id: T.nilable(::String), latest_activity: T.nilable(::ClerkSDKBackend::Shared::LatestActivity)).void }
      def initialize(abandon_at: nil, client_id: nil, created_at: nil, expire_at: nil, id: nil, last_active_at: nil, object: nil, status: nil, updated_at: nil, user_id: nil, actor: nil, last_active_organization_id: nil, latest_activity: nil)
        @abandon_at = abandon_at
        @client_id = client_id
        @created_at = created_at
        @expire_at = expire_at
        @id = id
        @last_active_at = last_active_at
        @object = object
        @status = status
        @updated_at = updated_at
        @user_id = user_id
        @actor = actor
        @last_active_organization_id = last_active_organization_id
        @latest_activity = latest_activity
      end
    end
  end
end
