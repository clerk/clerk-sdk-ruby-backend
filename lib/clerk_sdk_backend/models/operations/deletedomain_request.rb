# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class DeleteDomainRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the domain that will be deleted. Must be a satellite domain.
      field :domain_id, ::String, { 'path_param': { 'field_name': 'domain_id', 'style': 'simple', 'explode': false } }


      sig { params(domain_id: ::String).void }
      def initialize(domain_id: nil)
        @domain_id = domain_id
      end
    end
  end
end
