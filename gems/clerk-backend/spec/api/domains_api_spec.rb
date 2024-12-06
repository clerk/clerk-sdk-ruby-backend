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

# Unit tests for ClerkBackend::DomainsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DomainsApi' do
  before do
    # run before each test
    @api_instance = ClerkBackend::DomainsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainsApi' do
    it 'should create an instance of DomainsApi' do
      expect(@api_instance).to be_instance_of(ClerkBackend::DomainsApi)
    end
  end

  # unit tests for add_domain
  # Add a domain
  # Add a new domain for your instance. Useful in the case of multi-domain instances, allows adding satellite domains to an instance. The new domain must have a &#x60;name&#x60;. The domain name can contain the port for development instances, like &#x60;localhost:3000&#x60;. At the moment, instances can have only one primary domain, so the &#x60;is_satellite&#x60; parameter must be set to &#x60;true&#x60;. If you&#39;re planning to configure the new satellite domain to run behind a proxy, pass the &#x60;proxy_url&#x60; parameter accordingly.
  # @param [Hash] opts the optional parameters
  # @option opts [AddDomainRequest] :add_domain_request 
  # @return [Domain]
  describe 'add_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_domain
  # Delete a satellite domain
  # Deletes a satellite domain for the instance. It is currently not possible to delete the instance&#39;s primary domain.
  # @param domain_id The ID of the domain that will be deleted. Must be a satellite domain.
  # @param [Hash] opts the optional parameters
  # @return [DeletedObject]
  describe 'delete_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_domains
  # List all instance domains
  # Use this endpoint to get a list of all domains for an instance. The response will contain the primary domain for the instance and any satellite domains. Each domain in the response contains information about the URLs where Clerk operates and the required CNAME targets.
  # @param [Hash] opts the optional parameters
  # @return [Domains]
  describe 'list_domains test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_domain
  # Update a domain
  # The &#x60;proxy_url&#x60; can be updated only for production instances. Update one of the instance&#39;s domains. Both primary and satellite domains can be updated. If you choose to use Clerk via proxy, use this endpoint to specify the &#x60;proxy_url&#x60;. Whenever you decide you&#39;d rather switch to DNS setup for Clerk, simply set &#x60;proxy_url&#x60; to &#x60;null&#x60; for the domain. When you update a production instance&#39;s primary domain name, you have to make sure that you&#39;ve completed all the necessary setup steps for DNS and emails to work. Expect downtime otherwise. Updating a primary domain&#39;s name will also update the instance&#39;s home origin, affecting the default application paths.
  # @param domain_id The ID of the domain that will be updated.
  # @param update_domain_request 
  # @param [Hash] opts the optional parameters
  # @return [Domain]
  describe 'update_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
