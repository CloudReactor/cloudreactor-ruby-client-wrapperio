=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.2.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module CloudReactorAPIClient
  # An EmailProfile contains settings for emailing notifications.
  class PatchedEmailNotificationProfile
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :name

    attr_accessor :description

    attr_accessor :dashboard_url

    # Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
    attr_accessor :created_by_user

    attr_accessor :created_by_group

    attr_accessor :run_environment

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :to_addresses

    attr_accessor :cc_addresses

    attr_accessor :bcc_addresses

    attr_accessor :subject_template

    attr_accessor :body_template

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'uuid' => :'uuid',
        :'name' => :'name',
        :'description' => :'description',
        :'dashboard_url' => :'dashboard_url',
        :'created_by_user' => :'created_by_user',
        :'created_by_group' => :'created_by_group',
        :'run_environment' => :'run_environment',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'to_addresses' => :'to_addresses',
        :'cc_addresses' => :'cc_addresses',
        :'bcc_addresses' => :'bcc_addresses',
        :'subject_template' => :'subject_template',
        :'body_template' => :'body_template'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'url' => :'String',
        :'uuid' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'dashboard_url' => :'String',
        :'created_by_user' => :'String',
        :'created_by_group' => :'Group',
        :'run_environment' => :'NameAndUuid',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'to_addresses' => :'Array<String>',
        :'cc_addresses' => :'Array<String>',
        :'bcc_addresses' => :'Array<String>',
        :'subject_template' => :'String',
        :'body_template' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'created_by_group',
        :'run_environment',
        :'to_addresses',
        :'cc_addresses',
        :'bcc_addresses',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::PatchedEmailNotificationProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::PatchedEmailNotificationProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'dashboard_url')
        self.dashboard_url = attributes[:'dashboard_url']
      end

      if attributes.key?(:'created_by_user')
        self.created_by_user = attributes[:'created_by_user']
      end

      if attributes.key?(:'created_by_group')
        self.created_by_group = attributes[:'created_by_group']
      end

      if attributes.key?(:'run_environment')
        self.run_environment = attributes[:'run_environment']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'to_addresses')
        if (value = attributes[:'to_addresses']).is_a?(Array)
          self.to_addresses = value
        end
      end

      if attributes.key?(:'cc_addresses')
        if (value = attributes[:'cc_addresses']).is_a?(Array)
          self.cc_addresses = value
        end
      end

      if attributes.key?(:'bcc_addresses')
        if (value = attributes[:'bcc_addresses']).is_a?(Array)
          self.bcc_addresses = value
        end
      end

      if attributes.key?(:'subject_template')
        self.subject_template = attributes[:'subject_template']
      end

      if attributes.key?(:'body_template')
        self.body_template = attributes[:'body_template']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 200
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 200.')
      end

      if !@description.nil? && @description.to_s.length > 5000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 5000.')
      end

      if !@subject_template.nil? && @subject_template.to_s.length > 1000
        invalid_properties.push('invalid value for "subject_template", the character length must be smaller than or equal to 1000.')
      end

      if !@body_template.nil? && @body_template.to_s.length > 10000
        invalid_properties.push('invalid value for "body_template", the character length must be smaller than or equal to 10000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 200
      return false if !@description.nil? && @description.to_s.length > 5000
      return false if !@subject_template.nil? && @subject_template.to_s.length > 1000
      return false if !@body_template.nil? && @body_template.to_s.length > 10000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 200
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 200.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 5000
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 5000.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] subject_template Value to be assigned
    def subject_template=(subject_template)
      if !subject_template.nil? && subject_template.to_s.length > 1000
        fail ArgumentError, 'invalid value for "subject_template", the character length must be smaller than or equal to 1000.'
      end

      @subject_template = subject_template
    end

    # Custom attribute writer method with validation
    # @param [Object] body_template Value to be assigned
    def body_template=(body_template)
      if !body_template.nil? && body_template.to_s.length > 10000
        fail ArgumentError, 'invalid value for "body_template", the character length must be smaller than or equal to 10000.'
      end

      @body_template = body_template
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          uuid == o.uuid &&
          name == o.name &&
          description == o.description &&
          dashboard_url == o.dashboard_url &&
          created_by_user == o.created_by_user &&
          created_by_group == o.created_by_group &&
          run_environment == o.run_environment &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          to_addresses == o.to_addresses &&
          cc_addresses == o.cc_addresses &&
          bcc_addresses == o.bcc_addresses &&
          subject_template == o.subject_template &&
          body_template == o.body_template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [url, uuid, name, description, dashboard_url, created_by_user, created_by_group, run_environment, created_at, updated_at, to_addresses, cc_addresses, bcc_addresses, subject_template, body_template].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = CloudReactorAPIClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
