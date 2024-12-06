=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ClerkBackend::ActorTokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ActorTokensApi' do
  before do
    # run before each test
    @api_instance = ClerkBackend::ActorTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActorTokensApi' do
    it 'should create an instance of ActorTokensApi' do
      expect(@api_instance).to be_instance_of(ClerkBackend::ActorTokensApi)
    end
  end

  # unit tests for create_actor_token
  # Create actor token
  # Create an actor token that can be used to impersonate the given user. The &#x60;actor&#x60; parameter needs to include at least a \&quot;sub\&quot; key whose value is the ID of the actor (impersonating) user.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateActorTokenRequest] :create_actor_token_request 
  # @return [ActorToken]
  describe 'create_actor_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_actor_token
  # Revoke actor token
  # Revokes a pending actor token.
  # @param actor_token_id The ID of the actor token to be revoked.
  # @param [Hash] opts the optional parameters
  # @return [ActorToken]
  describe 'revoke_actor_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
