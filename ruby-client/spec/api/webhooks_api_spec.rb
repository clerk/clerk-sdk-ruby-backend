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

# Unit tests for ClerkBackend::WebhooksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @api_instance = ClerkBackend::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@api_instance).to be_instance_of(ClerkBackend::WebhooksApi)
    end
  end

  # unit tests for create_svix_app
  # Create a Svix app
  # Create a Svix app and associate it with the current instance
  # @param [Hash] opts the optional parameters
  # @return [SvixURL]
  describe 'create_svix_app test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_svix_app
  # Delete a Svix app
  # Delete a Svix app and disassociate it from the current instance
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_svix_app test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_svix_auth_url
  # Create a Svix Dashboard URL
  # Generate a new url for accessing the Svix&#39;s management dashboard for that particular instance
  # @param [Hash] opts the optional parameters
  # @return [SvixURL]
  describe 'generate_svix_auth_url test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
