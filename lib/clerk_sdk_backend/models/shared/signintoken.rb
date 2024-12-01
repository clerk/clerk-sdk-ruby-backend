# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # Success
    class SignInToken < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation.
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :object, ::ClerkSDKBackend::Shared::SignInTokenObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::SignInTokenObject, false) } }

      field :status, ::ClerkSDKBackend::Shared::SignInTokenStatus, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::SignInTokenStatus, false) } }
      # Unix timestamp of last update.
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :user_id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('user_id') } }

      field :token, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('token') } }

      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('url') } }


      sig { params(created_at: ::Integer, id: ::String, object: ::ClerkSDKBackend::Shared::SignInTokenObject, status: ::ClerkSDKBackend::Shared::SignInTokenStatus, updated_at: ::Integer, user_id: ::String, token: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(created_at: nil, id: nil, object: nil, status: nil, updated_at: nil, user_id: nil, token: nil, url: nil)
        @created_at = created_at
        @id = id
        @object = object
        @status = status
        @updated_at = updated_at
        @user_id = user_id
        @token = token
        @url = url
      end
    end
  end
end
