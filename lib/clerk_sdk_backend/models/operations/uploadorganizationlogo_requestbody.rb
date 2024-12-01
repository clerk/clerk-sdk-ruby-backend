# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class UploadOrganizationLogoRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :file, ::ClerkSDKBackend::Operations::UploadOrganizationLogoFile, { 'multipart_form': { 'file': true } }
      # The ID of the user that will be credited with the image upload.
      field :uploader_user_id, T.nilable(::String), { 'multipart_form': { 'field_name': 'uploader_user_id' } }


      sig { params(file: ::ClerkSDKBackend::Operations::UploadOrganizationLogoFile, uploader_user_id: T.nilable(::String)).void }
      def initialize(file: nil, uploader_user_id: nil)
        @file = file
        @uploader_user_id = uploader_user_id
      end
    end
  end
end
