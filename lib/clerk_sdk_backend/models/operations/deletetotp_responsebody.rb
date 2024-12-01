# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  
    # Successful operation.
    class DeleteTOTPResponseBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('user_id') } }


      sig { params(user_id: T.nilable(::String)).void }
      def initialize(user_id: nil)
        @user_id = user_id
      end
    end
  end
end
