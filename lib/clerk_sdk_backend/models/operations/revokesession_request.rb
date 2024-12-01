# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class RevokeSessionRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the session
      field :session_id, ::String, { 'path_param': { 'field_name': 'session_id', 'style': 'simple', 'explode': false } }


      sig { params(session_id: ::String).void }
      def initialize(session_id: nil)
        @session_id = session_id
      end
    end
  end
end
