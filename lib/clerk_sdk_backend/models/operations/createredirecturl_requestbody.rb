# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class CreateRedirectURLRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The full url value prefixed with `https://` or a custom scheme e.g. `"https://my-app.com/oauth-callback"` or `"my-app://oauth-callback"`
      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('url') } }


      sig { params(url: T.nilable(::String)).void }
      def initialize(url: nil)
        @url = url
      end
    end
  end
end
