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
  # RunEnvironments contain common settings for running a set of related Tasks. Usually RunEnvironments group Tasks in the same deployment environment (e.g. staging or production). Task and Workflows belong to a RunEnvironment but can override the RunEnvironment's settings.
  class RunEnvironment
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :name

    attr_accessor :description

    attr_accessor :dashboard_url

    # Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
    attr_accessor :created_by_user

    attr_accessor :created_by_group

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :aws_account_id

    attr_accessor :aws_default_region

    attr_accessor :aws_access_key

    attr_accessor :aws_assumed_role_external_id

    attr_accessor :aws_events_role_arn

    attr_accessor :aws_workflow_starter_lambda_arn

    attr_accessor :aws_workflow_starter_access_key

    attr_accessor :default_alert_methods

    attr_accessor :execution_method_capabilities

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
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'aws_account_id' => :'aws_account_id',
        :'aws_default_region' => :'aws_default_region',
        :'aws_access_key' => :'aws_access_key',
        :'aws_assumed_role_external_id' => :'aws_assumed_role_external_id',
        :'aws_events_role_arn' => :'aws_events_role_arn',
        :'aws_workflow_starter_lambda_arn' => :'aws_workflow_starter_lambda_arn',
        :'aws_workflow_starter_access_key' => :'aws_workflow_starter_access_key',
        :'default_alert_methods' => :'default_alert_methods',
        :'execution_method_capabilities' => :'execution_method_capabilities'
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
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'aws_account_id' => :'String',
        :'aws_default_region' => :'String',
        :'aws_access_key' => :'String',
        :'aws_assumed_role_external_id' => :'String',
        :'aws_events_role_arn' => :'String',
        :'aws_workflow_starter_lambda_arn' => :'String',
        :'aws_workflow_starter_access_key' => :'String',
        :'default_alert_methods' => :'Array<NameAndUuid>',
        :'execution_method_capabilities' => :'Array<AwsEcsRunEnvironmentExecutionMethodCapability>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'created_by_group',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::RunEnvironment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::RunEnvironment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'aws_account_id')
        self.aws_account_id = attributes[:'aws_account_id']
      end

      if attributes.key?(:'aws_default_region')
        self.aws_default_region = attributes[:'aws_default_region']
      end

      if attributes.key?(:'aws_access_key')
        self.aws_access_key = attributes[:'aws_access_key']
      end

      if attributes.key?(:'aws_assumed_role_external_id')
        self.aws_assumed_role_external_id = attributes[:'aws_assumed_role_external_id']
      end

      if attributes.key?(:'aws_events_role_arn')
        self.aws_events_role_arn = attributes[:'aws_events_role_arn']
      end

      if attributes.key?(:'aws_workflow_starter_lambda_arn')
        self.aws_workflow_starter_lambda_arn = attributes[:'aws_workflow_starter_lambda_arn']
      end

      if attributes.key?(:'aws_workflow_starter_access_key')
        self.aws_workflow_starter_access_key = attributes[:'aws_workflow_starter_access_key']
      end

      if attributes.key?(:'default_alert_methods')
        if (value = attributes[:'default_alert_methods']).is_a?(Array)
          self.default_alert_methods = value
        end
      end

      if attributes.key?(:'execution_method_capabilities')
        if (value = attributes[:'execution_method_capabilities']).is_a?(Array)
          self.execution_method_capabilities = value
        end
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

      if @created_by_user.nil?
        invalid_properties.push('invalid value for "created_by_user", created_by_user cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if !@aws_account_id.nil? && @aws_account_id.to_s.length > 200
        invalid_properties.push('invalid value for "aws_account_id", the character length must be smaller than or equal to 200.')
      end

      if !@aws_default_region.nil? && @aws_default_region.to_s.length > 20
        invalid_properties.push('invalid value for "aws_default_region", the character length must be smaller than or equal to 20.')
      end

      if !@aws_access_key.nil? && @aws_access_key.to_s.length > 100
        invalid_properties.push('invalid value for "aws_access_key", the character length must be smaller than or equal to 100.')
      end

      if !@aws_assumed_role_external_id.nil? && @aws_assumed_role_external_id.to_s.length > 1000
        invalid_properties.push('invalid value for "aws_assumed_role_external_id", the character length must be smaller than or equal to 1000.')
      end

      if !@aws_events_role_arn.nil? && @aws_events_role_arn.to_s.length > 100
        invalid_properties.push('invalid value for "aws_events_role_arn", the character length must be smaller than or equal to 100.')
      end

      if !@aws_workflow_starter_lambda_arn.nil? && @aws_workflow_starter_lambda_arn.to_s.length > 1000
        invalid_properties.push('invalid value for "aws_workflow_starter_lambda_arn", the character length must be smaller than or equal to 1000.')
      end

      if !@aws_workflow_starter_access_key.nil? && @aws_workflow_starter_access_key.to_s.length > 1000
        invalid_properties.push('invalid value for "aws_workflow_starter_access_key", the character length must be smaller than or equal to 1000.')
      end

      if @execution_method_capabilities.nil?
        invalid_properties.push('invalid value for "execution_method_capabilities", execution_method_capabilities cannot be nil.')
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
      return false if @created_by_user.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if !@aws_account_id.nil? && @aws_account_id.to_s.length > 200
      return false if !@aws_default_region.nil? && @aws_default_region.to_s.length > 20
      return false if !@aws_access_key.nil? && @aws_access_key.to_s.length > 100
      return false if !@aws_assumed_role_external_id.nil? && @aws_assumed_role_external_id.to_s.length > 1000
      return false if !@aws_events_role_arn.nil? && @aws_events_role_arn.to_s.length > 100
      return false if !@aws_workflow_starter_lambda_arn.nil? && @aws_workflow_starter_lambda_arn.to_s.length > 1000
      return false if !@aws_workflow_starter_access_key.nil? && @aws_workflow_starter_access_key.to_s.length > 1000
      return false if @execution_method_capabilities.nil?
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
    # @param [Object] aws_account_id Value to be assigned
    def aws_account_id=(aws_account_id)
      if !aws_account_id.nil? && aws_account_id.to_s.length > 200
        fail ArgumentError, 'invalid value for "aws_account_id", the character length must be smaller than or equal to 200.'
      end

      @aws_account_id = aws_account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] aws_default_region Value to be assigned
    def aws_default_region=(aws_default_region)
      if !aws_default_region.nil? && aws_default_region.to_s.length > 20
        fail ArgumentError, 'invalid value for "aws_default_region", the character length must be smaller than or equal to 20.'
      end

      @aws_default_region = aws_default_region
    end

    # Custom attribute writer method with validation
    # @param [Object] aws_access_key Value to be assigned
    def aws_access_key=(aws_access_key)
      if !aws_access_key.nil? && aws_access_key.to_s.length > 100
        fail ArgumentError, 'invalid value for "aws_access_key", the character length must be smaller than or equal to 100.'
      end

      @aws_access_key = aws_access_key
    end

    # Custom attribute writer method with validation
    # @param [Object] aws_assumed_role_external_id Value to be assigned
    def aws_assumed_role_external_id=(aws_assumed_role_external_id)
      if !aws_assumed_role_external_id.nil? && aws_assumed_role_external_id.to_s.length > 1000
        fail ArgumentError, 'invalid value for "aws_assumed_role_external_id", the character length must be smaller than or equal to 1000.'
      end

      @aws_assumed_role_external_id = aws_assumed_role_external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] aws_events_role_arn Value to be assigned
    def aws_events_role_arn=(aws_events_role_arn)
      if !aws_events_role_arn.nil? && aws_events_role_arn.to_s.length > 100
        fail ArgumentError, 'invalid value for "aws_events_role_arn", the character length must be smaller than or equal to 100.'
      end

      @aws_events_role_arn = aws_events_role_arn
    end

    # Custom attribute writer method with validation
    # @param [Object] aws_workflow_starter_lambda_arn Value to be assigned
    def aws_workflow_starter_lambda_arn=(aws_workflow_starter_lambda_arn)
      if !aws_workflow_starter_lambda_arn.nil? && aws_workflow_starter_lambda_arn.to_s.length > 1000
        fail ArgumentError, 'invalid value for "aws_workflow_starter_lambda_arn", the character length must be smaller than or equal to 1000.'
      end

      @aws_workflow_starter_lambda_arn = aws_workflow_starter_lambda_arn
    end

    # Custom attribute writer method with validation
    # @param [Object] aws_workflow_starter_access_key Value to be assigned
    def aws_workflow_starter_access_key=(aws_workflow_starter_access_key)
      if !aws_workflow_starter_access_key.nil? && aws_workflow_starter_access_key.to_s.length > 1000
        fail ArgumentError, 'invalid value for "aws_workflow_starter_access_key", the character length must be smaller than or equal to 1000.'
      end

      @aws_workflow_starter_access_key = aws_workflow_starter_access_key
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
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          aws_account_id == o.aws_account_id &&
          aws_default_region == o.aws_default_region &&
          aws_access_key == o.aws_access_key &&
          aws_assumed_role_external_id == o.aws_assumed_role_external_id &&
          aws_events_role_arn == o.aws_events_role_arn &&
          aws_workflow_starter_lambda_arn == o.aws_workflow_starter_lambda_arn &&
          aws_workflow_starter_access_key == o.aws_workflow_starter_access_key &&
          default_alert_methods == o.default_alert_methods &&
          execution_method_capabilities == o.execution_method_capabilities
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [url, uuid, name, description, dashboard_url, created_by_user, created_by_group, created_at, updated_at, aws_account_id, aws_default_region, aws_access_key, aws_assumed_role_external_id, aws_events_role_arn, aws_workflow_starter_lambda_arn, aws_workflow_starter_access_key, default_alert_methods, execution_method_capabilities].hash
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
