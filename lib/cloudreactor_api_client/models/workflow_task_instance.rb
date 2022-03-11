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
  # A WorkflowTaskInstance contains a Task that is configured to run in a Workflow.
  class WorkflowTaskInstance
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :name

    attr_accessor :description

    attr_accessor :workflow

    attr_accessor :task

    attr_accessor :start_transition_condition

    attr_accessor :max_complete_executions

    attr_accessor :should_eval_transitions_after_first_execution

    attr_accessor :condition_count_threshold

    attr_accessor :condition_ratio_threshold

    attr_accessor :max_age_seconds

    attr_accessor :default_max_retries

    attr_accessor :failure_behavior

    attr_accessor :allow_workflow_execution_after_failure

    attr_accessor :timeout_behavior

    attr_accessor :allow_workflow_execution_after_timeout

    attr_accessor :environment_variables_overrides

    attr_accessor :allocated_cpu_units

    attr_accessor :allocated_memory_mb

    attr_accessor :use_task_alert_methods

    attr_accessor :ui_color

    attr_accessor :ui_icon_type

    attr_accessor :ui_scale

    attr_accessor :ui_center_margin_top

    attr_accessor :ui_center_margin_left

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'uuid' => :'uuid',
        :'name' => :'name',
        :'description' => :'description',
        :'workflow' => :'workflow',
        :'task' => :'task',
        :'start_transition_condition' => :'start_transition_condition',
        :'max_complete_executions' => :'max_complete_executions',
        :'should_eval_transitions_after_first_execution' => :'should_eval_transitions_after_first_execution',
        :'condition_count_threshold' => :'condition_count_threshold',
        :'condition_ratio_threshold' => :'condition_ratio_threshold',
        :'max_age_seconds' => :'max_age_seconds',
        :'default_max_retries' => :'default_max_retries',
        :'failure_behavior' => :'failure_behavior',
        :'allow_workflow_execution_after_failure' => :'allow_workflow_execution_after_failure',
        :'timeout_behavior' => :'timeout_behavior',
        :'allow_workflow_execution_after_timeout' => :'allow_workflow_execution_after_timeout',
        :'environment_variables_overrides' => :'environment_variables_overrides',
        :'allocated_cpu_units' => :'allocated_cpu_units',
        :'allocated_memory_mb' => :'allocated_memory_mb',
        :'use_task_alert_methods' => :'use_task_alert_methods',
        :'ui_color' => :'ui_color',
        :'ui_icon_type' => :'ui_icon_type',
        :'ui_scale' => :'ui_scale',
        :'ui_center_margin_top' => :'ui_center_margin_top',
        :'ui_center_margin_left' => :'ui_center_margin_left',
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
        :'workflow' => :'NameAndUuid',
        :'task' => :'NameAndUuid',
        :'start_transition_condition' => :'StartTransitionConditionEnum',
        :'max_complete_executions' => :'Integer',
        :'should_eval_transitions_after_first_execution' => :'Boolean',
        :'condition_count_threshold' => :'Integer',
        :'condition_ratio_threshold' => :'Float',
        :'max_age_seconds' => :'Integer',
        :'default_max_retries' => :'Integer',
        :'failure_behavior' => :'FailureBehaviorEnum',
        :'allow_workflow_execution_after_failure' => :'Boolean',
        :'timeout_behavior' => :'TimeoutBehaviorEnum',
        :'allow_workflow_execution_after_timeout' => :'Boolean',
        :'environment_variables_overrides' => :'Hash<String, Object>',
        :'allocated_cpu_units' => :'Integer',
        :'allocated_memory_mb' => :'Integer',
        :'use_task_alert_methods' => :'Boolean',
        :'ui_color' => :'String',
        :'ui_icon_type' => :'String',
        :'ui_scale' => :'Float',
        :'ui_center_margin_top' => :'Float',
        :'ui_center_margin_left' => :'Float',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'max_complete_executions',
        :'condition_count_threshold',
        :'condition_ratio_threshold',
        :'max_age_seconds',
        :'environment_variables_overrides',
        :'allocated_cpu_units',
        :'allocated_memory_mb',
        :'ui_scale',
        :'ui_center_margin_top',
        :'ui_center_margin_left',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::WorkflowTaskInstance` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::WorkflowTaskInstance`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'workflow')
        self.workflow = attributes[:'workflow']
      end

      if attributes.key?(:'task')
        self.task = attributes[:'task']
      end

      if attributes.key?(:'start_transition_condition')
        self.start_transition_condition = attributes[:'start_transition_condition']
      end

      if attributes.key?(:'max_complete_executions')
        self.max_complete_executions = attributes[:'max_complete_executions']
      end

      if attributes.key?(:'should_eval_transitions_after_first_execution')
        self.should_eval_transitions_after_first_execution = attributes[:'should_eval_transitions_after_first_execution']
      end

      if attributes.key?(:'condition_count_threshold')
        self.condition_count_threshold = attributes[:'condition_count_threshold']
      end

      if attributes.key?(:'condition_ratio_threshold')
        self.condition_ratio_threshold = attributes[:'condition_ratio_threshold']
      end

      if attributes.key?(:'max_age_seconds')
        self.max_age_seconds = attributes[:'max_age_seconds']
      end

      if attributes.key?(:'default_max_retries')
        self.default_max_retries = attributes[:'default_max_retries']
      end

      if attributes.key?(:'failure_behavior')
        self.failure_behavior = attributes[:'failure_behavior']
      end

      if attributes.key?(:'allow_workflow_execution_after_failure')
        self.allow_workflow_execution_after_failure = attributes[:'allow_workflow_execution_after_failure']
      end

      if attributes.key?(:'timeout_behavior')
        self.timeout_behavior = attributes[:'timeout_behavior']
      end

      if attributes.key?(:'allow_workflow_execution_after_timeout')
        self.allow_workflow_execution_after_timeout = attributes[:'allow_workflow_execution_after_timeout']
      end

      if attributes.key?(:'environment_variables_overrides')
        if (value = attributes[:'environment_variables_overrides']).is_a?(Hash)
          self.environment_variables_overrides = value
        end
      end

      if attributes.key?(:'allocated_cpu_units')
        self.allocated_cpu_units = attributes[:'allocated_cpu_units']
      end

      if attributes.key?(:'allocated_memory_mb')
        self.allocated_memory_mb = attributes[:'allocated_memory_mb']
      end

      if attributes.key?(:'use_task_alert_methods')
        self.use_task_alert_methods = attributes[:'use_task_alert_methods']
      end

      if attributes.key?(:'ui_color')
        self.ui_color = attributes[:'ui_color']
      end

      if attributes.key?(:'ui_icon_type')
        self.ui_icon_type = attributes[:'ui_icon_type']
      end

      if attributes.key?(:'ui_scale')
        self.ui_scale = attributes[:'ui_scale']
      end

      if attributes.key?(:'ui_center_margin_top')
        self.ui_center_margin_top = attributes[:'ui_center_margin_top']
      end

      if attributes.key?(:'ui_center_margin_left')
        self.ui_center_margin_left = attributes[:'ui_center_margin_left']
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

      if @workflow.nil?
        invalid_properties.push('invalid value for "workflow", workflow cannot be nil.')
      end

      if @task.nil?
        invalid_properties.push('invalid value for "task", task cannot be nil.')
      end

      if !@max_complete_executions.nil? && @max_complete_executions > 2147483647
        invalid_properties.push('invalid value for "max_complete_executions", must be smaller than or equal to 2147483647.')
      end

      if !@max_complete_executions.nil? && @max_complete_executions < -2147483648
        invalid_properties.push('invalid value for "max_complete_executions", must be greater than or equal to -2147483648.')
      end

      if !@condition_count_threshold.nil? && @condition_count_threshold > 2147483647
        invalid_properties.push('invalid value for "condition_count_threshold", must be smaller than or equal to 2147483647.')
      end

      if !@condition_count_threshold.nil? && @condition_count_threshold < -2147483648
        invalid_properties.push('invalid value for "condition_count_threshold", must be greater than or equal to -2147483648.')
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

      if !@allocated_cpu_units.nil? && @allocated_cpu_units > 2147483647
        invalid_properties.push('invalid value for "allocated_cpu_units", must be smaller than or equal to 2147483647.')
      end

      if !@allocated_cpu_units.nil? && @allocated_cpu_units < -2147483648
        invalid_properties.push('invalid value for "allocated_cpu_units", must be greater than or equal to -2147483648.')
      end

      if !@allocated_memory_mb.nil? && @allocated_memory_mb > 2147483647
        invalid_properties.push('invalid value for "allocated_memory_mb", must be smaller than or equal to 2147483647.')
      end

      if !@allocated_memory_mb.nil? && @allocated_memory_mb < -2147483648
        invalid_properties.push('invalid value for "allocated_memory_mb", must be greater than or equal to -2147483648.')
      end

      if !@ui_color.nil? && @ui_color.to_s.length > 16
        invalid_properties.push('invalid value for "ui_color", the character length must be smaller than or equal to 16.')
      end

      if !@ui_icon_type.nil? && @ui_icon_type.to_s.length > 50
        invalid_properties.push('invalid value for "ui_icon_type", the character length must be smaller than or equal to 50.')
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
      return false if @workflow.nil?
      return false if @task.nil?
      return false if !@max_complete_executions.nil? && @max_complete_executions > 2147483647
      return false if !@max_complete_executions.nil? && @max_complete_executions < -2147483648
      return false if !@condition_count_threshold.nil? && @condition_count_threshold > 2147483647
      return false if !@condition_count_threshold.nil? && @condition_count_threshold < -2147483648
      return false if !@max_age_seconds.nil? && @max_age_seconds > 2147483647
      return false if !@max_age_seconds.nil? && @max_age_seconds < -2147483648
      return false if !@default_max_retries.nil? && @default_max_retries > 2147483647
      return false if !@default_max_retries.nil? && @default_max_retries < -2147483648
      return false if !@allocated_cpu_units.nil? && @allocated_cpu_units > 2147483647
      return false if !@allocated_cpu_units.nil? && @allocated_cpu_units < -2147483648
      return false if !@allocated_memory_mb.nil? && @allocated_memory_mb > 2147483647
      return false if !@allocated_memory_mb.nil? && @allocated_memory_mb < -2147483648
      return false if !@ui_color.nil? && @ui_color.to_s.length > 16
      return false if !@ui_icon_type.nil? && @ui_icon_type.to_s.length > 50
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
    # @param [Object] max_complete_executions Value to be assigned
    def max_complete_executions=(max_complete_executions)
      if !max_complete_executions.nil? && max_complete_executions > 2147483647
        fail ArgumentError, 'invalid value for "max_complete_executions", must be smaller than or equal to 2147483647.'
      end

      if !max_complete_executions.nil? && max_complete_executions < -2147483648
        fail ArgumentError, 'invalid value for "max_complete_executions", must be greater than or equal to -2147483648.'
      end

      @max_complete_executions = max_complete_executions
    end

    # Custom attribute writer method with validation
    # @param [Object] condition_count_threshold Value to be assigned
    def condition_count_threshold=(condition_count_threshold)
      if !condition_count_threshold.nil? && condition_count_threshold > 2147483647
        fail ArgumentError, 'invalid value for "condition_count_threshold", must be smaller than or equal to 2147483647.'
      end

      if !condition_count_threshold.nil? && condition_count_threshold < -2147483648
        fail ArgumentError, 'invalid value for "condition_count_threshold", must be greater than or equal to -2147483648.'
      end

      @condition_count_threshold = condition_count_threshold
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

    # Custom attribute writer method with validation
    # @param [Object] allocated_cpu_units Value to be assigned
    def allocated_cpu_units=(allocated_cpu_units)
      if !allocated_cpu_units.nil? && allocated_cpu_units > 2147483647
        fail ArgumentError, 'invalid value for "allocated_cpu_units", must be smaller than or equal to 2147483647.'
      end

      if !allocated_cpu_units.nil? && allocated_cpu_units < -2147483648
        fail ArgumentError, 'invalid value for "allocated_cpu_units", must be greater than or equal to -2147483648.'
      end

      @allocated_cpu_units = allocated_cpu_units
    end

    # Custom attribute writer method with validation
    # @param [Object] allocated_memory_mb Value to be assigned
    def allocated_memory_mb=(allocated_memory_mb)
      if !allocated_memory_mb.nil? && allocated_memory_mb > 2147483647
        fail ArgumentError, 'invalid value for "allocated_memory_mb", must be smaller than or equal to 2147483647.'
      end

      if !allocated_memory_mb.nil? && allocated_memory_mb < -2147483648
        fail ArgumentError, 'invalid value for "allocated_memory_mb", must be greater than or equal to -2147483648.'
      end

      @allocated_memory_mb = allocated_memory_mb
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
    # @param [Object] ui_icon_type Value to be assigned
    def ui_icon_type=(ui_icon_type)
      if !ui_icon_type.nil? && ui_icon_type.to_s.length > 50
        fail ArgumentError, 'invalid value for "ui_icon_type", the character length must be smaller than or equal to 50.'
      end

      @ui_icon_type = ui_icon_type
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
          workflow == o.workflow &&
          task == o.task &&
          start_transition_condition == o.start_transition_condition &&
          max_complete_executions == o.max_complete_executions &&
          should_eval_transitions_after_first_execution == o.should_eval_transitions_after_first_execution &&
          condition_count_threshold == o.condition_count_threshold &&
          condition_ratio_threshold == o.condition_ratio_threshold &&
          max_age_seconds == o.max_age_seconds &&
          default_max_retries == o.default_max_retries &&
          failure_behavior == o.failure_behavior &&
          allow_workflow_execution_after_failure == o.allow_workflow_execution_after_failure &&
          timeout_behavior == o.timeout_behavior &&
          allow_workflow_execution_after_timeout == o.allow_workflow_execution_after_timeout &&
          environment_variables_overrides == o.environment_variables_overrides &&
          allocated_cpu_units == o.allocated_cpu_units &&
          allocated_memory_mb == o.allocated_memory_mb &&
          use_task_alert_methods == o.use_task_alert_methods &&
          ui_color == o.ui_color &&
          ui_icon_type == o.ui_icon_type &&
          ui_scale == o.ui_scale &&
          ui_center_margin_top == o.ui_center_margin_top &&
          ui_center_margin_left == o.ui_center_margin_left &&
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
      [url, uuid, name, description, workflow, task, start_transition_condition, max_complete_executions, should_eval_transitions_after_first_execution, condition_count_threshold, condition_ratio_threshold, max_age_seconds, default_max_retries, failure_behavior, allow_workflow_execution_after_failure, timeout_behavior, allow_workflow_execution_after_timeout, environment_variables_overrides, allocated_cpu_units, allocated_memory_mb, use_task_alert_methods, ui_color, ui_icon_type, ui_scale, ui_center_margin_top, ui_center_margin_left, created_at, updated_at].hash
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
