=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'date'
require 'time'

module ClerkBackend
  class OrganizationSettings
    # String representing the object's type. Objects of the same type share the same value.
    attr_accessor :object

    attr_accessor :enabled

    attr_accessor :max_allowed_memberships

    attr_accessor :max_allowed_roles

    attr_accessor :max_allowed_permissions

    # The role key that a user will be assigned after creating an organization.
    attr_accessor :creator_role

    # The default for whether an admin can delete an organization with the Frontend API.
    attr_accessor :admin_delete_enabled

    attr_accessor :domains_enabled

    attr_accessor :domains_enrollment_modes

    # The role key that it will be used in order to create an organization invitation or suggestion.
    attr_accessor :domains_default_role

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'object' => :'object',
        :'enabled' => :'enabled',
        :'max_allowed_memberships' => :'max_allowed_memberships',
        :'max_allowed_roles' => :'max_allowed_roles',
        :'max_allowed_permissions' => :'max_allowed_permissions',
        :'creator_role' => :'creator_role',
        :'admin_delete_enabled' => :'admin_delete_enabled',
        :'domains_enabled' => :'domains_enabled',
        :'domains_enrollment_modes' => :'domains_enrollment_modes',
        :'domains_default_role' => :'domains_default_role'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'object' => :'String',
        :'enabled' => :'Boolean',
        :'max_allowed_memberships' => :'Integer',
        :'max_allowed_roles' => :'Integer',
        :'max_allowed_permissions' => :'Integer',
        :'creator_role' => :'String',
        :'admin_delete_enabled' => :'Boolean',
        :'domains_enabled' => :'Boolean',
        :'domains_enrollment_modes' => :'Array<String>',
        :'domains_default_role' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkBackend::OrganizationSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkBackend::OrganizationSettings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = nil
      end

      if attributes.key?(:'max_allowed_memberships')
        self.max_allowed_memberships = attributes[:'max_allowed_memberships']
      else
        self.max_allowed_memberships = nil
      end

      if attributes.key?(:'max_allowed_roles')
        self.max_allowed_roles = attributes[:'max_allowed_roles']
      end

      if attributes.key?(:'max_allowed_permissions')
        self.max_allowed_permissions = attributes[:'max_allowed_permissions']
      end

      if attributes.key?(:'creator_role')
        self.creator_role = attributes[:'creator_role']
      else
        self.creator_role = nil
      end

      if attributes.key?(:'admin_delete_enabled')
        self.admin_delete_enabled = attributes[:'admin_delete_enabled']
      else
        self.admin_delete_enabled = nil
      end

      if attributes.key?(:'domains_enabled')
        self.domains_enabled = attributes[:'domains_enabled']
      else
        self.domains_enabled = nil
      end

      if attributes.key?(:'domains_enrollment_modes')
        if (value = attributes[:'domains_enrollment_modes']).is_a?(Array)
          self.domains_enrollment_modes = value
        end
      else
        self.domains_enrollment_modes = nil
      end

      if attributes.key?(:'domains_default_role')
        self.domains_default_role = attributes[:'domains_default_role']
      else
        self.domains_default_role = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @max_allowed_memberships.nil?
        invalid_properties.push('invalid value for "max_allowed_memberships", max_allowed_memberships cannot be nil.')
      end

      if @creator_role.nil?
        invalid_properties.push('invalid value for "creator_role", creator_role cannot be nil.')
      end

      if @admin_delete_enabled.nil?
        invalid_properties.push('invalid value for "admin_delete_enabled", admin_delete_enabled cannot be nil.')
      end

      if @domains_enabled.nil?
        invalid_properties.push('invalid value for "domains_enabled", domains_enabled cannot be nil.')
      end

      if @domains_enrollment_modes.nil?
        invalid_properties.push('invalid value for "domains_enrollment_modes", domains_enrollment_modes cannot be nil.')
      end

      if @domains_default_role.nil?
        invalid_properties.push('invalid value for "domains_default_role", domains_default_role cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["organization_settings"])
      return false unless object_validator.valid?(@object)
      return false if @enabled.nil?
      return false if @max_allowed_memberships.nil?
      return false if @creator_role.nil?
      return false if @admin_delete_enabled.nil?
      return false if @domains_enabled.nil?
      return false if @domains_enrollment_modes.nil?
      return false if @domains_default_role.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["organization_settings"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          enabled == o.enabled &&
          max_allowed_memberships == o.max_allowed_memberships &&
          max_allowed_roles == o.max_allowed_roles &&
          max_allowed_permissions == o.max_allowed_permissions &&
          creator_role == o.creator_role &&
          admin_delete_enabled == o.admin_delete_enabled &&
          domains_enabled == o.domains_enabled &&
          domains_enrollment_modes == o.domains_enrollment_modes &&
          domains_default_role == o.domains_default_role
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, enabled, max_allowed_memberships, max_allowed_roles, max_allowed_permissions, creator_role, admin_delete_enabled, domains_enabled, domains_enrollment_modes, domains_default_role].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ClerkBackend.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
