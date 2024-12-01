# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # EnrollmentMode - Mode of enrollment for the domain
    class EnrollmentMode < T::Enum
      enums do
        MANUAL_INVITATION = new('manual_invitation')
        AUTOMATIC_INVITATION = new('automatic_invitation')
        AUTOMATIC_SUGGESTION = new('automatic_suggestion')
      end
    end
  end
end
