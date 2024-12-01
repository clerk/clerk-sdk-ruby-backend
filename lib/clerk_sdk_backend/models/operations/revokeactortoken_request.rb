# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class RevokeActorTokenRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the actor token to be revoked.
      field :actor_token_id, ::String, { 'path_param': { 'field_name': 'actor_token_id', 'style': 'simple', 'explode': false } }


      sig { params(actor_token_id: ::String).void }
      def initialize(actor_token_id: nil)
        @actor_token_id = actor_token_id
      end
    end
  end
end
