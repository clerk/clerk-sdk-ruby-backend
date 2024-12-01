# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class UpdateUserRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # If Backup Codes are configured on the instance, you can provide them to enable it on the specific user without the need to reset them.
      # You must provide the backup codes in plain format or the corresponding bcrypt digest.
      field :backup_codes, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('backup_codes') } }
      # If true, the user can create organizations with the Frontend API.
      field :create_organization_enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('create_organization_enabled') } }
      # The maximum number of organizations the user can create. 0 means unlimited.
      field :create_organizations_limit, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('create_organizations_limit') } }
      # A custom date/time denoting _when_ the user signed up to the application, specified in RFC3339 format (e.g. `2012-10-20T07:15:20.902Z`).
      field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }
      # If true, the user can delete themselves with the Frontend API.
      field :delete_self_enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('delete_self_enabled') } }
      # The ID of the user as used in your external systems or your previous authentication solution.
      # Must be unique across your instance.
      field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('external_id') } }
      # The first name to assign to the user
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('first_name') } }
      # The last name to assign to the user
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('last_name') } }
      # A custom timestamps denoting _when_ the user accepted legal requirements, specified in RFC3339 format (e.g. `2012-10-20T07:15:20.902Z`).
      field :legal_accepted_at, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('legal_accepted_at') } }
      # If set to `true`, the user will be notified that their primary email address has changed.
      # By default, no notification is sent.
      field :notify_primary_email_address_changed, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('notify_primary_email_address_changed') } }
      # The plaintext password to give the user.
      # Must be at least 8 characters long, and can not be in any list of hacked passwords.
      field :password, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('password') } }
      # In case you already have the password digests and not the passwords, you can use them for the newly created user via this property.
      # The digests should be generated with one of the supported algorithms.
      # The hashing algorithm can be specified using the `password_hasher` property.
      field :password_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('password_digest') } }
      # The hashing algorithm that was used to generate the password digest.
      # 
      # The algorithms we support at the moment are [`bcrypt`](https://en.wikipedia.org/wiki/Bcrypt), [`bcrypt_sha256_django`](https://docs.djangoproject.com/en/4.0/topics/auth/passwords/), [`md5`](https://en.wikipedia.org/wiki/MD5), `pbkdf2_sha1`, `pbkdf2_sha256`, [`pbkdf2_sha256_django`](https://docs.djangoproject.com/en/4.0/topics/auth/passwords/),
      # [`phpass`](https://www.openwall.com/phpass/), [`scrypt_firebase`](https://firebaseopensource.com/projects/firebase/scrypt/),
      # [`scrypt_werkzeug`](https://werkzeug.palletsprojects.com/en/3.0.x/utils/#werkzeug.security.generate_password_hash), [`sha256`](https://en.wikipedia.org/wiki/SHA-2),
      # and the [`argon2`](https://argon2.online/) variants: `argon2i` and `argon2id`.
      # 
      # Each of the supported hashers expects the incoming digest to be in a particular format. See the [Clerk docs](https://clerk.com/docs/references/backend/user/create-user) for more information.
      field :password_hasher, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('password_hasher') } }
      # The ID of the email address to set as primary.
      # It must be verified, and present on the current user.
      field :primary_email_address_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('primary_email_address_id') } }
      # The ID of the phone number to set as primary.
      # It must be verified, and present on the current user.
      field :primary_phone_number_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('primary_phone_number_id') } }
      # The ID of the web3 wallets to set as primary.
      # It must be verified, and present on the current user.
      field :primary_web3_wallet_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('primary_web3_wallet_id') } }
      # Metadata saved on the user, that is only visible to your Backend API
      field :private_metadata, T.nilable(::ClerkSDKBackend::Operations::UpdateUserPrivateMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('private_metadata') } }
      # The ID of the image to set as the user's profile image
      field :profile_image_id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('profile_image_id') } }
      # Metadata saved on the user, that is visible to both your Frontend and Backend APIs
      field :public_metadata, T.nilable(::ClerkSDKBackend::Operations::UpdateUserPublicMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_metadata') } }
      # Set to `true` to sign out the user from all their active sessions once their password is updated. This parameter can only be used when providing a `password`.
      field :sign_out_of_other_sessions, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('sign_out_of_other_sessions') } }
      # When set to `true` all legal checks are skipped.
      # It is not recommended to skip legal checks unless you are migrating a user to Clerk.
      field :skip_legal_checks, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('skip_legal_checks') } }
      # Set it to `true` if you're updating the user's password and want to skip any password policy settings check. This parameter can only be used when providing a `password`.
      field :skip_password_checks, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('skip_password_checks') } }
      # In case TOTP is configured on the instance, you can provide the secret to enable it on the specific user without the need to reset it.
      # Please note that currently the supported options are:
      # * Period: 30 seconds
      # * Code length: 6 digits
      # * Algorithm: SHA1
      field :totp_secret, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('totp_secret') } }
      # Metadata saved on the user, that can be updated from both the Frontend and Backend APIs.
      # Note: Since this data can be modified from the frontend, it is not guaranteed to be safe.
      field :unsafe_metadata, T.nilable(::ClerkSDKBackend::Operations::UpdateUserUnsafeMetadata), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('unsafe_metadata') } }
      # The username to give to the user.
      # It must be unique across your instance.
      field :username, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('username') } }


      sig { params(backup_codes: T.nilable(T::Array[::String]), create_organization_enabled: T.nilable(T::Boolean), create_organizations_limit: T.nilable(::Integer), created_at: T.nilable(::String), delete_self_enabled: T.nilable(T::Boolean), external_id: T.nilable(::String), first_name: T.nilable(::String), last_name: T.nilable(::String), legal_accepted_at: T.nilable(::String), notify_primary_email_address_changed: T.nilable(T::Boolean), password: T.nilable(::String), password_digest: T.nilable(::String), password_hasher: T.nilable(::String), primary_email_address_id: T.nilable(::String), primary_phone_number_id: T.nilable(::String), primary_web3_wallet_id: T.nilable(::String), private_metadata: T.nilable(::ClerkSDKBackend::Operations::UpdateUserPrivateMetadata), profile_image_id: T.nilable(::String), public_metadata: T.nilable(::ClerkSDKBackend::Operations::UpdateUserPublicMetadata), sign_out_of_other_sessions: T.nilable(T::Boolean), skip_legal_checks: T.nilable(T::Boolean), skip_password_checks: T.nilable(T::Boolean), totp_secret: T.nilable(::String), unsafe_metadata: T.nilable(::ClerkSDKBackend::Operations::UpdateUserUnsafeMetadata), username: T.nilable(::String)).void }
      def initialize(backup_codes: nil, create_organization_enabled: nil, create_organizations_limit: nil, created_at: nil, delete_self_enabled: nil, external_id: nil, first_name: nil, last_name: nil, legal_accepted_at: nil, notify_primary_email_address_changed: nil, password: nil, password_digest: nil, password_hasher: nil, primary_email_address_id: nil, primary_phone_number_id: nil, primary_web3_wallet_id: nil, private_metadata: nil, profile_image_id: nil, public_metadata: nil, sign_out_of_other_sessions: nil, skip_legal_checks: nil, skip_password_checks: nil, totp_secret: nil, unsafe_metadata: nil, username: nil)
        @backup_codes = backup_codes
        @create_organization_enabled = create_organization_enabled
        @create_organizations_limit = create_organizations_limit
        @created_at = created_at
        @delete_self_enabled = delete_self_enabled
        @external_id = external_id
        @first_name = first_name
        @last_name = last_name
        @legal_accepted_at = legal_accepted_at
        @notify_primary_email_address_changed = notify_primary_email_address_changed
        @password = password
        @password_digest = password_digest
        @password_hasher = password_hasher
        @primary_email_address_id = primary_email_address_id
        @primary_phone_number_id = primary_phone_number_id
        @primary_web3_wallet_id = primary_web3_wallet_id
        @private_metadata = private_metadata
        @profile_image_id = profile_image_id
        @public_metadata = public_metadata
        @sign_out_of_other_sessions = sign_out_of_other_sessions
        @skip_legal_checks = skip_legal_checks
        @skip_password_checks = skip_password_checks
        @totp_secret = totp_secret
        @unsafe_metadata = unsafe_metadata
        @username = username
      end
    end
  end
end
