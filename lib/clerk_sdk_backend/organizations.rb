# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module ClerkSDKBackend
  extend T::Sig
  class Organizations
    extend T::Sig
    # Organizations are used to group members under a common entity and provide shared access to resources.
    # https://clerk.com/docs/organizations/overview

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::ClerkSDKBackend::Operations::ListOrganizationsRequest)).returns(::ClerkSDKBackend::Operations::ListOrganizationsResponse) }
    def all(request)
      # all - Get a list of organizations for an instance
      # This request returns the list of organizations for an instance.
      # Results can be paginated using the optional `limit` and `offset` query parameters.
      # The organizations are ordered by descending creation date.
      # Most recent organizations will be returned first.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/organizations"
      headers = {}
      query_params = Utils.get_query_params(::ClerkSDKBackend::Operations::ListOrganizationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::ListOrganizationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Organizations)
          res.organizations = out
        end
      elsif [400, 403, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(request: ::ClerkSDKBackend::Operations::CreateOrganizationRequestBody).returns(::ClerkSDKBackend::Operations::CreateOrganizationResponse) }
    def create(request)
      # create - Create an organization
      # Creates a new organization with the given name for an instance.
      # In order to successfully create an organization you need to provide the ID of the User who will become the organization administrator.
      # You can specify an optional slug for the new organization.
      # If provided, the organization slug can contain only lowercase alphanumeric characters (letters and digits) and the dash "-".
      # Organization slugs must be unique for the instance.
      # You can provide additional metadata for the organization and set any custom attribute you want.
      # Organizations support private and public metadata.
      # Private metadata can only be accessed from the Backend API.
      # Public metadata can be accessed from the Backend API, and are read-only from the Frontend API.
      # The `created_by` user will see this as their [active organization] (https://clerk.com/docs/organizations/overview#active-organization)
      # the next time they create a session, presuming they don't explicitly set a different organization as active before then.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/organizations"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::CreateOrganizationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Organization)
          res.organization = out
        end
      elsif [400, 403, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(organization_id: ::String, include_members_count: T.nilable(T::Boolean)).returns(::ClerkSDKBackend::Operations::GetOrganizationResponse) }
    def find(organization_id, include_members_count = nil)
      # find - Retrieve an organization by ID or slug
      # Fetches the organization whose ID or slug matches the provided `id_or_slug` URL query parameter.
      request = ::ClerkSDKBackend::Operations::GetOrganizationRequest.new(
        
        organization_id: organization_id,
        include_members_count: include_members_count
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::GetOrganizationRequest,
        base_url,
        '/organizations/{organization_id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::ClerkSDKBackend::Operations::GetOrganizationRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::GetOrganizationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Organization)
          res.organization = out
        end
      elsif [403, 404].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(organization_id: ::String, request_body: ::ClerkSDKBackend::Operations::UpdateOrganizationRequestBody).returns(::ClerkSDKBackend::Operations::UpdateOrganizationResponse) }
    def update(organization_id, request_body)
      # update - Update an organization
      # Updates an existing organization
      request = ::ClerkSDKBackend::Operations::UpdateOrganizationRequest.new(
        
        organization_id: organization_id,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::UpdateOrganizationRequest,
        base_url,
        '/organizations/{organization_id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::UpdateOrganizationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Organization)
          res.organization = out
        end
      elsif [402, 404, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(organization_id: ::String).returns(::ClerkSDKBackend::Operations::DeleteOrganizationResponse) }
    def delete(organization_id)
      # delete - Delete an organization
      # Deletes the given organization.
      # Please note that deleting an organization will also delete all memberships and invitations.
      # This is not reversible.
      request = ::ClerkSDKBackend::Operations::DeleteOrganizationRequest.new(
        
        organization_id: organization_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::DeleteOrganizationRequest,
        base_url,
        '/organizations/{organization_id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::DeleteOrganizationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::DeletedObject)
          res.deleted_object = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(organization_id: ::String, request_body: ::ClerkSDKBackend::Operations::MergeOrganizationMetadataRequestBody).returns(::ClerkSDKBackend::Operations::MergeOrganizationMetadataResponse) }
    def update_metadata(organization_id, request_body)
      # update_metadata - Merge and update metadata for an organization
      # Update organization metadata attributes by merging existing values with the provided parameters.
      # Metadata values will be updated via a deep merge.
      # Deep meaning that any nested JSON objects will be merged as well.
      # You can remove metadata keys at any level by setting their value to `null`.
      request = ::ClerkSDKBackend::Operations::MergeOrganizationMetadataRequest.new(
        
        organization_id: organization_id,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::MergeOrganizationMetadataRequest,
        base_url,
        '/organizations/{organization_id}/metadata',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::MergeOrganizationMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Organization)
          res.organization = out
        end
      elsif [400, 401, 404, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(organization_id: ::String, request_body: ::ClerkSDKBackend::Operations::UploadOrganizationLogoRequestBody).returns(::ClerkSDKBackend::Operations::UploadOrganizationLogoResponse) }
    def upload_logo(organization_id, request_body)
      # upload_logo - Upload a logo for the organization
      # Set or replace an organization's logo, by uploading an image file.
      # This endpoint uses the `multipart/form-data` request content type and accepts a file of image type.
      # The file size cannot exceed 10MB.
      # Only the following file content types are supported: `image/jpeg`, `image/png`, `image/gif`, `image/webp`, `image/x-icon`, `image/vnd.microsoft.icon`.
      request = ::ClerkSDKBackend::Operations::UploadOrganizationLogoRequest.new(
        
        organization_id: organization_id,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::UploadOrganizationLogoRequest,
        base_url,
        '/organizations/{organization_id}/logo',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :multipart)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::UploadOrganizationLogoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::OrganizationWithLogo)
          res.organization_with_logo = out
        end
      elsif [400, 403, 404, 413].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(organization_id: ::String).returns(::ClerkSDKBackend::Operations::DeleteOrganizationLogoResponse) }
    def delete_logo(organization_id)
      # delete_logo - Delete the organization's logo.
      request = ::ClerkSDKBackend::Operations::DeleteOrganizationLogoRequest.new(
        
        organization_id: organization_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::DeleteOrganizationLogoRequest,
        base_url,
        '/organizations/{organization_id}/logo',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::DeleteOrganizationLogoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Organization)
          res.organization = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end
  end
end
