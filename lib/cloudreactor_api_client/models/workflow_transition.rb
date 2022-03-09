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
  # A WorkflowTransition is a directed edge in a Worfklow, which is a directed graph. It contains a source WorkflowTaskInstance, a destination WorkflowTaskInstance, as well as conditions for triggering the destination to execution.
  class WorkflowTransition
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :description

    attr_accessor :from_workflow_task_instance

    attr_accessor :to_workflow_task_instance

    attr_accessor :rule_type

    attr_accessor :exit_codes

    attr_accessor :threshold_property

    attr_accessor :custom_expression

    attr_accessor :priority

    attr_accessor :ui_color

    attr_accessor :ui_line_style

    attr_accessor :ui_scale

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'uuid' => :'uuid',
        :'description' => :'description',
        :'from_workflow_task_instance' => :'from_workflow_task_instance',
        :'to_workflow_task_instance' => :'to_workflow_task_instance',
        :'rule_type' => :'rule_type',
        :'exit_codes' => :'exit_codes',
        :'threshold_property' => :'threshold_property',
        :'custom_expression' => :'custom_expression',
        :'priority' => :'priority',
        :'ui_color' => :'ui_color',
        :'ui_line_style' => :'ui_line_style',
        :'ui_scale' => :'ui_scale',
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
        :'description' => :'String',
        :'from_workflow_task_instance' => :'NameAndUuid',
        :'to_workflow_task_instance' => :'NameAndUuid',
        :'rule_type' => :'RuleTypeEnum',
        :'exit_codes' => :'Array<String>',
        :'threshold_property' => :'ThresholdPropertyEnum',
        :'custom_expression' => :'String',
        :'priority' => :'Integer',
        :'ui_color' => :'String',
        :'ui_line_style' => :'String',
        :'ui_scale' => :'Float',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'exit_codes',
        :'priority',
        :'ui_scale',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::WorkflowTransition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::WorkflowTransition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'from_workflow_task_instance')
        self.from_workflow_task_instance = attributes[:'from_workflow_task_instance']
      end

      if attributes.key?(:'to_workflow_task_instance')
        self.to_workflow_task_instance = attributes[:'to_workflow_task_instance']
      end

      if attributes.key?(:'rule_type')
        self.rule_type = attributes[:'rule_type']
      end

      if attributes.key?(:'exit_codes')
        if (value = attributes[:'exit_codes']).is_a?(Array)
          self.exit_codes = value
        end
      end

      if attributes.key?(:'threshold_property')
        self.threshold_property = attributes[:'threshold_property']
      end

      if attributes.key?(:'custom_expression')
        self.custom_expression = attributes[:'custom_expression']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'ui_color')
        self.ui_color = attributes[:'ui_color']
      end

      if attributes.key?(:'ui_line_style')
        self.ui_line_style = attributes[:'ui_line_style']
      end

      if attributes.key?(:'ui_scale')
        self.ui_scale = attributes[:'ui_scale']
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

      if !@description.nil? && @description.to_s.length > 5000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 5000.')
      end

      if @from_workflow_task_instance.nil?
        invalid_properties.push('invalid value for "from_workflow_task_instance", from_workflow_task_instance cannot be nil.')
      end

      if @to_workflow_task_instance.nil?
        invalid_properties.push('invalid value for "to_workflow_task_instance", to_workflow_task_instance cannot be nil.')
      end

      if @rule_type.nil?
        invalid_properties.push('invalid value for "rule_type", rule_type cannot be nil.')
      end

      if !@custom_expression.nil? && @custom_expression.to_s.length > 5000
        invalid_properties.push('invalid value for "custom_expression", the character length must be smaller than or equal to 5000.')
      end

      if !@priority.nil? && @priority > 2147483647
        invalid_properties.push('invalid value for "priority", must be smaller than or equal to 2147483647.')
      end

      if !@priority.nil? && @priority < 0
        invalid_properties.push('invalid value for "priority", must be greater than or equal to 0.')
      end

      if !@ui_color.nil? && @ui_color.to_s.length > 16
        invalid_properties.push('invalid value for "ui_color", the character length must be smaller than or equal to 16.')
      end

      if !@ui_line_style.nil? && @ui_line_style.to_s.length > 50
        invalid_properties.push('invalid value for "ui_line_style", the character length must be smaller than or equal to 50.')
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
      return false if !@description.nil? && @description.to_s.length > 5000
      return false if @from_workflow_task_instance.nil?
      return false if @to_workflow_task_instance.nil?
      return false if @rule_type.nil?
      return false if !@custom_expression.nil? && @custom_expression.to_s.length > 5000
      return false if !@priority.nil? && @priority > 2147483647
      return false if !@priority.nil? && @priority < 0
      return false if !@ui_color.nil? && @ui_color.to_s.length > 16
      return false if !@ui_line_style.nil? && @ui_line_style.to_s.length > 50
      return false if @created_at.nil?
      return false if @updated_at.nil?
      true
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
    # @param [Object] custom_expression Value to be assigned
    def custom_expression=(custom_expression)
      if !custom_expression.nil? && custom_expression.to_s.length > 5000
        fail ArgumentError, 'invalid value for "custom_expression", the character length must be smaller than or equal to 5000.'
      end

      @custom_expression = custom_expression
    end

    # Custom attribute writer method with validation
    # @param [Object] priority Value to be assigned
    def priority=(priority)
      if !priority.nil? && priority > 2147483647
        fail ArgumentError, 'invalid value for "priority", must be smaller than or equal to 2147483647.'
      end

      if !priority.nil? && priority < 0
        fail ArgumentError, 'invalid value for "priority", must be greater than or equal to 0.'
      end

      @priority = priority
    end

    # Custom attribute writer method with validation
    # @param [Object] ui_color Value to be assigned
    def ui_color=(ui_color)
      if !ui_color.nil? && ui_color.to_s.length > 16
        fail ArgumentError, 'invalid value for "ui_color", the character length must be smaller than or equal to 16.'
      end

      @ui_color = ui_color
    end

    # Custom attribute writer method with validation
    # @param [Object] ui_line_style Value to be assigned
    def ui_line_style=(ui_line_style)
      if !ui_line_style.nil? && ui_line_style.to_s.length > 50
        fail ArgumentError, 'invalid value for "ui_line_style", the character length must be smaller than or equal to 50.'
      end

      @ui_line_style = ui_line_style
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          uuid == o.uuid &&
          description == o.description &&
          from_workflow_task_instance == o.from_workflow_task_instance &&
          to_workflow_task_instance == o.to_workflow_task_instance &&
          rule_type == o.rule_type &&
          exit_codes == o.exit_codes &&
          threshold_property == o.threshold_property &&
          custom_expression == o.custom_expression &&
          priority == o.priority &&
          ui_color == o.ui_color &&
          ui_line_style == o.ui_line_style &&
          ui_scale == o.ui_scale &&
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
      [url, uuid, description, from_workflow_task_instance, to_workflow_task_instance, rule_type, exit_codes, threshold_property, custom_expression, priority, ui_color, ui_line_style, ui_scale, created_at, updated_at].hash
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
