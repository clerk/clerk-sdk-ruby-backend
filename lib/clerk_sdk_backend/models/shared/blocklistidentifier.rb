# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class BlocklistIdentifier < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation
      # 
      field :created_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }
      # An email address, email domain, phone number or web3 wallet.
      # 
      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('identifier') } }

      field :identifier_type, T.nilable(::ClerkSDKBackend::Shared::BlocklistIdentifierIdentifierType), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('identifier_type'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::BlocklistIdentifierIdentifierType, true) } }

      field :instance_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('instance_id') } }
      # String representing the object's type. Objects of the same type share the same value.
      # 
      field :object, T.nilable(::ClerkSDKBackend::Shared::BlocklistIdentifierObject), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::BlocklistIdentifierObject, true) } }
      # Unix timestamp of last update.
      # 
      field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }


      sig { params(created_at: T.nilable(::Integer), id: T.nilable(::String), identifier: T.nilable(::String), identifier_type: T.nilable(::ClerkSDKBackend::Shared::BlocklistIdentifierIdentifierType), instance_id: T.nilable(::String), object: T.nilable(::ClerkSDKBackend::Shared::BlocklistIdentifierObject), updated_at: T.nilable(::Integer)).void }
      def initialize(created_at: nil, id: nil, identifier: nil, identifier_type: nil, instance_id: nil, object: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @identifier = identifier
        @identifier_type = identifier_type
        @instance_id = instance_id
        @object = object
        @updated_at = updated_at
      end
    end
  end
end
