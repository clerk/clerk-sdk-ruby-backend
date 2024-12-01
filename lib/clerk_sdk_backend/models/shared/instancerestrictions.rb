# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # Success
    class InstanceRestrictions < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :allowlist, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('allowlist') } }

      field :block_email_subaddresses, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('block_email_subaddresses') } }

      field :blocklist, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('blocklist') } }

      field :ignore_dots_for_gmail_addresses, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('ignore_dots_for_gmail_addresses') } }
      # String representing the object's type. Objects of the same type share the same value.
      field :object, T.nilable(::ClerkSDKBackend::Shared::InstanceRestrictionsObject), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::InstanceRestrictionsObject, true) } }


      sig { params(allowlist: T.nilable(T::Boolean), block_email_subaddresses: T.nilable(T::Boolean), blocklist: T.nilable(T::Boolean), ignore_dots_for_gmail_addresses: T.nilable(T::Boolean), object: T.nilable(::ClerkSDKBackend::Shared::InstanceRestrictionsObject)).void }
      def initialize(allowlist: nil, block_email_subaddresses: nil, blocklist: nil, ignore_dots_for_gmail_addresses: nil, object: nil)
        @allowlist = allowlist
        @block_email_subaddresses = block_email_subaddresses
        @blocklist = blocklist
        @ignore_dots_for_gmail_addresses = ignore_dots_for_gmail_addresses
        @object = object
      end
    end
  end
end
