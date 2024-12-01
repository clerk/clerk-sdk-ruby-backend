# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class ClerkError < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :code, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('code') } }

      field :long_message, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('long_message') } }

      field :message, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('message') } }

      field :clerk_trace_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('clerk_trace_id') } }

      field :meta, T.nilable(::ClerkSDKBackend::Shared::Meta), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('meta') } }


      sig { params(code: ::String, long_message: ::String, message: ::String, clerk_trace_id: T.nilable(::String), meta: T.nilable(::ClerkSDKBackend::Shared::Meta)).void }
      def initialize(code: nil, long_message: nil, message: nil, clerk_trace_id: nil, meta: nil)
        @code = code
        @long_message = long_message
        @message = message
        @clerk_trace_id = clerk_trace_id
        @meta = meta
      end
    end
  end
end
