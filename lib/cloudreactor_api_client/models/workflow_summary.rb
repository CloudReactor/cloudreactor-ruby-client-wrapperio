=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.2.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module CloudReactorAPIClient
  # Selected properties of Workflows.
  class WorkflowSummary
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :name

    attr_accessor :description

    attr_accessor :dashboard_url

    attr_accessor :schedule

    attr_accessor :max_concurrency

    attr_accessor :max_age_seconds

    attr_accessor :default_max_retries

    attr_accessor :latest_workflow_execution

    # Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
    attr_accessor :created_by_user

    attr_accessor :created_by_group

    attr_accessor :run_environment

    attr_accessor :enabled

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'uuid' => :'uuid',
        :'name' => :'name',
        :'description' => :'description',
        :'dashboard_url' => :'dashboard_url',
        :'schedule' => :'schedule',
        :'max_concurrency' => :'max_concurrency',
        :'max_age_seconds' => :'max_age_seconds',
        :'default_max_retries' => :'default_max_retries',
        :'latest_workflow_execution' => :'latest_workflow_execution',
        :'created_by_user' => :'created_by_user',
        :'created_by_group' => :'created_by_group',
        :'run_environment' => :'run_environment',
        :'enabled' => :'enabled',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
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
        :'schedule' => :'String',
        :'max_concurrency' => :'Integer',
        :'max_age_seconds' => :'Integer',
        :'default_max_retries' => :'Integer',
        :'latest_workflow_execution' => :'WorkflowExecutionSummary',
        :'created_by_user' => :'String',
        :'created_by_group' => :'Group',
        :'run_environment' => :'NameAndUuid',
        :'enabled' => :'Boolean',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'max_concurrency',
        :'max_age_seconds',
        :'created_by_group',
        :'run_environment',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::WorkflowSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::WorkflowSummary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'max_concurrency')
        self.max_concurrency = attributes[:'max_concurrency']
      end

      if attributes.key?(:'max_age_seconds')
        self.max_age_seconds = attributes[:'max_age_seconds']
      end

      if attributes.key?(:'default_max_retries')
        self.default_max_retries = attributes[:'default_max_retries']
      end

      if attributes.key?(:'latest_workflow_execution')
        self.latest_workflow_execution = attributes[:'latest_workflow_execution']
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

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      if @uuid.nil?
        invalid_properties.push('invalid value for "uuid", uuid cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 200
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 200.')
      end

      if !@description.nil? && @description.to_s.length > 5000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 5000.')
      end

      if @dashboard_url.nil?
        invalid_properties.push('invalid value for "dashboard_url", dashboard_url cannot be nil.')
      end

      if !@schedule.nil? && @schedule.to_s.length > 1000
        invalid_properties.push('invalid value for "schedule", the character length must be smaller than or equal to 1000.')
      end

      if !@max_concurrency.nil? && @max_concurrency > 2147483647
        invalid_properties.push('invalid value for "max_concurrency", must be smaller than or equal to 2147483647.')
      end

      if !@max_concurrency.nil? && @max_concurrency < -2147483648
        invalid_properties.push('invalid value for "max_concurrency", must be greater than or equal to -2147483648.')
      end

      if !@max_age_seconds.nil? && @max_age_seconds > 2147483647
        invalid_properties.push('invalid value for "max_age_seconds", must be smaller than or equal to 2147483647.')
      end

      if !@max_age_seconds.nil? && @max_age_seconds < -2147483648
        invalid_properties.push('invalid value for "max_age_seconds", must be greater than or equal to -2147483648.')
      end

      if !@default_max_retries.nil? && @default_max_retries > 2147483647
        invalid_properties.push('invalid value for "default_max_retries", must be smaller than or equal to 2147483647.')
      end

      if !@default_max_retries.nil? && @default_max_retries < -2147483648
        invalid_properties.push('invalid value for "default_max_retries", must be greater than or equal to -2147483648.')
      end

      if @created_by_user.nil?
        invalid_properties.push('invalid value for "created_by_user", created_by_user cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @url.nil?
      return false if @uuid.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 200
      return false if !@description.nil? && @description.to_s.length > 5000
      return false if @dashboard_url.nil?
      return false if !@schedule.nil? && @schedule.to_s.length > 1000
      return false if !@max_concurrency.nil? && @max_concurrency > 2147483647
      return false if !@max_concurrency.nil? && @max_concurrency < -2147483648
      return false if !@max_age_seconds.nil? && @max_age_seconds > 2147483647
      return false if !@max_age_seconds.nil? && @max_age_seconds < -2147483648
      return false if !@default_max_retries.nil? && @default_max_retries > 2147483647
      return false if !@default_max_retries.nil? && @default_max_retries < -2147483648
      return false if @created_by_user.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 200
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
    # @param [Object] schedule Value to be assigned
    def schedule=(schedule)
      if !schedule.nil? && schedule.to_s.length > 1000
        fail ArgumentError, 'invalid value for "schedule", the character length must be smaller than or equal to 1000.'
      end

      @schedule = schedule
    end

    # Custom attribute writer method with validation
    # @param [Object] max_concurrency Value to be assigned
    def max_concurrency=(max_concurrency)
      if !max_concurrency.nil? && max_concurrency > 2147483647
        fail ArgumentError, 'invalid value for "max_concurrency", must be smaller than or equal to 2147483647.'
      end

      if !max_concurrency.nil? && max_concurrency < -2147483648
        fail ArgumentError, 'invalid value for "max_concurrency", must be greater than or equal to -2147483648.'
      end

      @max_concurrency = max_concurrency
    end

    # Custom attribute writer method with validation
    # @param [Object] max_age_seconds Value to be assigned
    def max_age_seconds=(max_age_seconds)
      if !max_age_seconds.nil? && max_age_seconds > 2147483647
        fail ArgumentError, 'invalid value for "max_age_seconds", must be smaller than or equal to 2147483647.'
      end

      if !max_age_seconds.nil? && max_age_seconds < -2147483648
        fail ArgumentError, 'invalid value for "max_age_seconds", must be greater than or equal to -2147483648.'
      end

      @max_age_seconds = max_age_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] default_max_retries Value to be assigned
    def default_max_retries=(default_max_retries)
      if !default_max_retries.nil? && default_max_retries > 2147483647
        fail ArgumentError, 'invalid value for "default_max_retries", must be smaller than or equal to 2147483647.'
      end

      if !default_max_retries.nil? && default_max_retries < -2147483648
        fail ArgumentError, 'invalid value for "default_max_retries", must be greater than or equal to -2147483648.'
      end

      @default_max_retries = default_max_retries
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
          schedule == o.schedule &&
          max_concurrency == o.max_concurrency &&
          max_age_seconds == o.max_age_seconds &&
          default_max_retries == o.default_max_retries &&
          latest_workflow_execution == o.latest_workflow_execution &&
          created_by_user == o.created_by_user &&
          created_by_group == o.created_by_group &&
          run_environment == o.run_environment &&
          enabled == o.enabled &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [url, uuid, name, description, dashboard_url, schedule, max_concurrency, max_age_seconds, default_max_retries, latest_workflow_execution, created_by_user, created_by_group, run_environment, enabled, created_at, updated_at].hash
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
