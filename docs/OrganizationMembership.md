# ClerkBackend::OrganizationMembership

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  | [optional] |
| **role** | **String** |  | [optional] |
| **permissions** | **Array&lt;String&gt;** |  | [optional] |
| **public_metadata** | **Object** | Metadata saved on the organization membership, accessible from both Frontend and Backend APIs | [optional] |
| **private_metadata** | **Object** | Metadata saved on the organization membership, accessible only from the Backend API | [optional] |
| **organization** | [**Organization**](Organization.md) |  | [optional] |
| **public_user_data** | [**OrganizationMembershipPublicUserData**](OrganizationMembershipPublicUserData.md) |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation. | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update. | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::OrganizationMembership.new(
  id: null,
  object: null,
  role: null,
  permissions: null,
  public_metadata: null,
  private_metadata: null,
  organization: null,
  public_user_data: null,
  created_at: null,
  updated_at: null
)
```

