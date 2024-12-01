# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class PublicUserData < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('first_name') } }

      field :has_image, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('has_image') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('identifier') } }

      field :image_url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('image_url') } }

      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('last_name') } }
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :profile_image_url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('profile_image_url') } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('user_id') } }


      sig { params(first_name: T.nilable(::String), has_image: T.nilable(T::Boolean), identifier: T.nilable(::String), image_url: T.nilable(::String), last_name: T.nilable(::String), profile_image_url: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(first_name: nil, has_image: nil, identifier: nil, image_url: nil, last_name: nil, profile_image_url: nil, user_id: nil)
        @first_name = first_name
        @has_image = has_image
        @identifier = identifier
        @image_url = image_url
        @last_name = last_name
        @profile_image_url = profile_image_url
        @user_id = user_id
      end
    end
  end
end
