# ClerkBackend::OAuthApplicationWithSecret

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **instance_id** | **String** |  |  |
| **name** | **String** |  |  |
| **client_id** | **String** |  |  |
| **public** | **Boolean** |  |  |
| **scopes** | **String** |  |  |
| **callback_url** | **String** |  |  |
| **authorize_url** | **String** |  |  |
| **token_fetch_url** | **String** |  |  |
| **user_info_url** | **String** |  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |
| **client_secret** | **String** | Empty if public client.  | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::OAuthApplicationWithSecret.new(
  object: null,
  id: null,
  instance_id: null,
  name: null,
  client_id: null,
  public: null,
  scopes: null,
  callback_url: null,
  authorize_url: null,
  token_fetch_url: null,
  user_info_url: null,
  created_at: null,
  updated_at: null,
  client_secret: null
)
```

