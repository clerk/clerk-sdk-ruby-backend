# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # A list of organization memberships
    class OrganizationMemberships < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :data, T::Array[::ClerkSDKBackend::Shared::OrganizationMembership], { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('data') } }
      # Total number of organization memberships
      # 
      field :total_count, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('total_count') } }


      sig { params(data: T::Array[::ClerkSDKBackend::Shared::OrganizationMembership], total_count: ::Integer).void }
      def initialize(data: nil, total_count: nil)
        @data = data
        @total_count = total_count
      end
    end
  end
end
