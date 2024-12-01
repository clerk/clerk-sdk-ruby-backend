# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class GetUsersCountRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Counts users with the specified email addresses.
      # Accepts up to 100 email addresses.
      # Any email addresses not found are ignored.
      field :email_address, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'email_address', 'style': 'form', 'explode': true } }
      # Counts users with the specified external ids.
      # Accepts up to 100 external ids.
      # Any external ids not found are ignored.
      field :external_id, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'external_id', 'style': 'form', 'explode': true } }
      # Counts users with the specified phone numbers.
      # Accepts up to 100 phone numbers.
      # Any phone numbers not found are ignored.
      field :phone_number, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'phone_number', 'style': 'form', 'explode': true } }
      # Counts users that match the given query.
      # For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names.
      # The query value doesn't need to match the exact value you are looking for, it is capable of partial matches as well.
      field :query, T.nilable(::String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }
      # Counts users with the user ids specified.
      # Accepts up to 100 user ids.
      # Any user ids not found are ignored.
      field :user_id, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'user_id', 'style': 'form', 'explode': true } }
      # Counts users with the specified usernames.
      # Accepts up to 100 usernames.
      # Any usernames not found are ignored.
      field :username, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'username', 'style': 'form', 'explode': true } }
      # Counts users with the specified web3 wallet addresses.
      # Accepts up to 100 web3 wallet addresses.
      # Any web3 wallet addressed not found are ignored.
      field :web3_wallet, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'web3_wallet', 'style': 'form', 'explode': true } }


      sig { params(email_address: T.nilable(T::Array[::String]), external_id: T.nilable(T::Array[::String]), phone_number: T.nilable(T::Array[::String]), query: T.nilable(::String), user_id: T.nilable(T::Array[::String]), username: T.nilable(T::Array[::String]), web3_wallet: T.nilable(T::Array[::String])).void }
      def initialize(email_address: nil, external_id: nil, phone_number: nil, query: nil, user_id: nil, username: nil, web3_wallet: nil)
        @email_address = email_address
        @external_id = external_id
        @phone_number = phone_number
        @query = query
        @user_id = user_id
        @username = username
        @web3_wallet = web3_wallet
      end
    end
  end
end
