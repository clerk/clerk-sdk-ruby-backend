# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module ClerkSDKBackend
  extend T::Sig

  SERVERS = [
    'https://api.clerk.com/v1', 
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::ClerkSDKBackend::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, T.nilable(::ClerkSDKBackend::Shared::Security)
    field :server_url, T.nilable(String)
    field :server_idx, T.nilable(Integer)
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String


    sig { params(client: Faraday::Connection, security: T.nilable(::ClerkSDKBackend::Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer)).void }
    def initialize(client, security, server_url, server_idx)
      @client = client
      @server_url = server_url
      @server_idx = server_idx.nil? ? 0 : server_idx
      raise StandardError, "Invalid server index #{server_idx}" if @server_idx.negative? || @server_idx >= SERVERS.length
      @security = security
      @language = 'ruby'
      @openapi_doc_version = 'v1'
      @sdk_version = '0.1.13'
      @gen_version = '2.463.1'
      @user_agent = 'speakeasy-sdk/ruby 0.1.13 2.463.1 v1 clerk_sdk_backend'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      [SERVERS[@server_idx], {}]
    end
  end
end
