=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.3.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module CloudReactorAPIClient
  # A WorkflowExecutionSummary contains a subset of the data inside of a WorkflowExecution.
  class WorkflowExecutionSummary
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :dashboard_url

    attr_accessor :status

    attr_accessor :run_reason

    attr_accessor :started_at

    attr_accessor :finished_at

    attr_accessor :last_heartbeat_at

    attr_accessor :stop_reason

    attr_accessor :marked_done_at

    attr_accessor :kill_started_at

    attr_accessor :kill_finished_at

    attr_accessor :kill_error_code

    attr_accessor :failed_attempts

    attr_accessor :timed_out_attempts

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'uuid' => :'uuid',
        :'dashboard_url' => :'dashboard_url',
        :'status' => :'status',
        :'run_reason' => :'run_reason',
        :'started_at' => :'started_at',
        :'finished_at' => :'finished_at',
        :'last_heartbeat_at' => :'last_heartbeat_at',
        :'stop_reason' => :'stop_reason',
        :'marked_done_at' => :'marked_done_at',
        :'kill_started_at' => :'kill_started_at',
        :'kill_finished_at' => :'kill_finished_at',
        :'kill_error_code' => :'kill_error_code',
        :'failed_attempts' => :'failed_attempts',
        :'timed_out_attempts' => :'timed_out_attempts',
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
        :'dashboard_url' => :'String',
        :'status' => :'WorkflowExecutionStatus',
        :'run_reason' => :'WorkflowExecutionRunReason',
        :'started_at' => :'Time',
        :'finished_at' => :'Time',
        :'last_heartbeat_at' => :'Time',
        :'stop_reason' => :'WorkflowExecutionStopReason',
        :'marked_done_at' => :'Time',
        :'kill_started_at' => :'Time',
        :'kill_finished_at' => :'Time',
        :'kill_error_code' => :'Integer',
        :'failed_attempts' => :'Integer',
        :'timed_out_attempts' => :'Integer',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'finished_at',
        :'last_heartbeat_at',
        :'marked_done_at',
        :'kill_started_at',
        :'kill_finished_at',
        :'kill_error_code',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::WorkflowExecutionSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::WorkflowExecutionSummary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'dashboard_url')
        self.dashboard_url = attributes[:'dashboard_url']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'run_reason')
        self.run_reason = attributes[:'run_reason']
      end

      if attributes.key?(:'started_at')
        self.started_at = attributes[:'started_at']
      end

      if attributes.key?(:'finished_at')
        self.finished_at = attributes[:'finished_at']
      end

      if attributes.key?(:'last_heartbeat_at')
        self.last_heartbeat_at = attributes[:'last_heartbeat_at']
      end

      if attributes.key?(:'stop_reason')
        self.stop_reason = attributes[:'stop_reason']
      end

      if attributes.key?(:'marked_done_at')
        self.marked_done_at = attributes[:'marked_done_at']
      end

      if attributes.key?(:'kill_started_at')
        self.kill_started_at = attributes[:'kill_started_at']
      end

      if attributes.key?(:'kill_finished_at')
        self.kill_finished_at = attributes[:'kill_finished_at']
      end

      if attributes.key?(:'kill_error_code')
        self.kill_error_code = attributes[:'kill_error_code']
      end

      if attributes.key?(:'failed_attempts')
        self.failed_attempts = attributes[:'failed_attempts']
      end

      if attributes.key?(:'timed_out_attempts')
        self.timed_out_attempts = attributes[:'timed_out_attempts']
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
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if !@kill_error_code.nil? && @kill_error_code > 2147483647
        invalid_properties.push('invalid value for "kill_error_code", must be smaller than or equal to 2147483647.')
      end

      if !@kill_error_code.nil? && @kill_error_code < -2147483648
        invalid_properties.push('invalid value for "kill_error_code", must be greater than or equal to -2147483648.')
      end

      if !@failed_attempts.nil? && @failed_attempts > 2147483647
        invalid_properties.push('invalid value for "failed_attempts", must be smaller than or equal to 2147483647.')
      end

      if !@failed_attempts.nil? && @failed_attempts < -2147483648
        invalid_properties.push('invalid value for "failed_attempts", must be greater than or equal to -2147483648.')
      end

      if !@timed_out_attempts.nil? && @timed_out_attempts > 2147483647
        invalid_properties.push('invalid value for "timed_out_attempts", must be smaller than or equal to 2147483647.')
      end

      if !@timed_out_attempts.nil? && @timed_out_attempts < -2147483648
        invalid_properties.push('invalid value for "timed_out_attempts", must be greater than or equal to -2147483648.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @status.nil?
      return false if !@kill_error_code.nil? && @kill_error_code > 2147483647
      return false if !@kill_error_code.nil? && @kill_error_code < -2147483648
      return false if !@failed_attempts.nil? && @failed_attempts > 2147483647
      return false if !@failed_attempts.nil? && @failed_attempts < -2147483648
      return false if !@timed_out_attempts.nil? && @timed_out_attempts > 2147483647
      return false if !@timed_out_attempts.nil? && @timed_out_attempts < -2147483648
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] kill_error_code Value to be assigned
    def kill_error_code=(kill_error_code)
      if !kill_error_code.nil? && kill_error_code > 2147483647
        fail ArgumentError, 'invalid value for "kill_error_code", must be smaller than or equal to 2147483647.'
      end

      if !kill_error_code.nil? && kill_error_code < -2147483648
        fail ArgumentError, 'invalid value for "kill_error_code", must be greater than or equal to -2147483648.'
      end

      @kill_error_code = kill_error_code
    end

    # Custom attribute writer method with validation
    # @param [Object] failed_attempts Value to be assigned
    def failed_attempts=(failed_attempts)
      if !failed_attempts.nil? && failed_attempts > 2147483647
        fail ArgumentError, 'invalid value for "failed_attempts", must be smaller than or equal to 2147483647.'
      end

      if !failed_attempts.nil? && failed_attempts < -2147483648
        fail ArgumentError, 'invalid value for "failed_attempts", must be greater than or equal to -2147483648.'
      end

      @failed_attempts = failed_attempts
    end

    # Custom attribute writer method with validation
    # @param [Object] timed_out_attempts Value to be assigned
    def timed_out_attempts=(timed_out_attempts)
      if !timed_out_attempts.nil? && timed_out_attempts > 2147483647
        fail ArgumentError, 'invalid value for "timed_out_attempts", must be smaller than or equal to 2147483647.'
      end

      if !timed_out_attempts.nil? && timed_out_attempts < -2147483648
        fail ArgumentError, 'invalid value for "timed_out_attempts", must be greater than or equal to -2147483648.'
      end

      @timed_out_attempts = timed_out_attempts
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          uuid == o.uuid &&
          dashboard_url == o.dashboard_url &&
          status == o.status &&
          run_reason == o.run_reason &&
          started_at == o.started_at &&
          finished_at == o.finished_at &&
          last_heartbeat_at == o.last_heartbeat_at &&
          stop_reason == o.stop_reason &&
          marked_done_at == o.marked_done_at &&
          kill_started_at == o.kill_started_at &&
          kill_finished_at == o.kill_finished_at &&
          kill_error_code == o.kill_error_code &&
          failed_attempts == o.failed_attempts &&
          timed_out_attempts == o.timed_out_attempts &&
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
      [url, uuid, dashboard_url, status, run_reason, started_at, finished_at, last_heartbeat_at, stop_reason, marked_done_at, kill_started_at, kill_finished_at, kill_error_code, failed_attempts, timed_out_attempts, created_at, updated_at].hash
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
