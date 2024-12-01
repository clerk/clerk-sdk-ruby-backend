# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class Domain < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :development_origin, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('development_origin') } }

      field :frontend_api_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('frontend_api_url') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :is_satellite, T::Boolean, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('is_satellite') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }

      field :object, ::ClerkSDKBackend::Shared::DomainObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::DomainObject, false) } }
      # Null for satellite domains.
      # 
      field :accounts_portal_url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('accounts_portal_url') } }

      field :cname_targets, T.nilable(T::Array[::ClerkSDKBackend::Shared::CNameTarget]), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('cname_targets') } }

      field :proxy_url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('proxy_url') } }


      sig { params(development_origin: ::String, frontend_api_url: ::String, id: ::String, is_satellite: T::Boolean, name: ::String, object: ::ClerkSDKBackend::Shared::DomainObject, accounts_portal_url: T.nilable(::String), cname_targets: T.nilable(T::Array[::ClerkSDKBackend::Shared::CNameTarget]), proxy_url: T.nilable(::String)).void }
      def initialize(development_origin: nil, frontend_api_url: nil, id: nil, is_satellite: nil, name: nil, object: nil, accounts_portal_url: nil, cname_targets: nil, proxy_url: nil)
        @development_origin = development_origin
        @frontend_api_url = frontend_api_url
        @id = id
        @is_satellite = is_satellite
        @name = name
        @object = object
        @accounts_portal_url = accounts_portal_url
        @cname_targets = cname_targets
        @proxy_url = proxy_url
      end
    end
  end
end
