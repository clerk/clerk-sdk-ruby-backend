# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class SchemasPasskey < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of when the passkey was last used.
      # 
      field :last_used_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('last_used_at') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }
      # String representing the object's type. Objects of the same type share the same value.
      # 
      field :object, ::ClerkSDKBackend::Shared::SchemasPasskeyObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::SchemasPasskeyObject, false) } }

      field :verification, ::Object, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('verification') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }


      sig { params(last_used_at: ::Integer, name: ::String, object: ::ClerkSDKBackend::Shared::SchemasPasskeyObject, verification: ::Object, id: T.nilable(::String)).void }
      def initialize(last_used_at: nil, name: nil, object: nil, verification: nil, id: nil)
        @last_used_at = last_used_at
        @name = name
        @object = object
        @verification = verification
        @id = id
      end
    end
  end
end
