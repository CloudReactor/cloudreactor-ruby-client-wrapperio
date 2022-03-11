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
  # A Task is a specification for a runnable job, including details on how to run the task and how often the task is supposed to run.
  class PatchedTask
    attr_accessor :url

    attr_accessor :uuid

    attr_accessor :name

    attr_accessor :description

    attr_accessor :dashboard_url

    attr_accessor :infrastructure_website_url

    attr_accessor :max_manual_start_delay_before_alert_seconds

    attr_accessor :max_manual_start_delay_before_abandonment_seconds

    attr_accessor :heartbeat_interval_seconds

    attr_accessor :max_heartbeat_lateness_before_alert_seconds

    attr_accessor :max_heartbeat_lateness_before_abandonment_seconds

    attr_accessor :schedule

    attr_accessor :scheduled_instance_count

    attr_accessor :is_service

    attr_accessor :service_instance_count

    attr_accessor :min_service_instance_count

    attr_accessor :max_concurrency

    attr_accessor :max_age_seconds

    attr_accessor :default_max_retries

    attr_accessor :project_url

    attr_accessor :log_query

    attr_accessor :logs_url

    attr_accessor :links

    attr_accessor :run_environment

    attr_accessor :execution_method_capability

    attr_accessor :alert_methods

    attr_accessor :other_metadata

    attr_accessor :latest_task_execution

    attr_accessor :current_service_info

    # Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
    attr_accessor :created_by_user

    attr_accessor :created_by_group

    attr_accessor :was_auto_created

    attr_accessor :passive

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
        :'infrastructure_website_url' => :'infrastructure_website_url',
        :'max_manual_start_delay_before_alert_seconds' => :'max_manual_start_delay_before_alert_seconds',
        :'max_manual_start_delay_before_abandonment_seconds' => :'max_manual_start_delay_before_abandonment_seconds',
        :'heartbeat_interval_seconds' => :'heartbeat_interval_seconds',
        :'max_heartbeat_lateness_before_alert_seconds' => :'max_heartbeat_lateness_before_alert_seconds',
        :'max_heartbeat_lateness_before_abandonment_seconds' => :'max_heartbeat_lateness_before_abandonment_seconds',
        :'schedule' => :'schedule',
        :'scheduled_instance_count' => :'scheduled_instance_count',
        :'is_service' => :'is_service',
        :'service_instance_count' => :'service_instance_count',
        :'min_service_instance_count' => :'min_service_instance_count',
        :'max_concurrency' => :'max_concurrency',
        :'max_age_seconds' => :'max_age_seconds',
        :'default_max_retries' => :'default_max_retries',
        :'project_url' => :'project_url',
        :'log_query' => :'log_query',
        :'logs_url' => :'logs_url',
        :'links' => :'links',
        :'run_environment' => :'run_environment',
        :'execution_method_capability' => :'execution_method_capability',
        :'alert_methods' => :'alert_methods',
        :'other_metadata' => :'other_metadata',
        :'latest_task_execution' => :'latest_task_execution',
        :'current_service_info' => :'current_service_info',
        :'created_by_user' => :'created_by_user',
        :'created_by_group' => :'created_by_group',
        :'was_auto_created' => :'was_auto_created',
        :'passive' => :'passive',
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
        :'infrastructure_website_url' => :'String',
        :'max_manual_start_delay_before_alert_seconds' => :'Integer',
        :'max_manual_start_delay_before_abandonment_seconds' => :'Integer',
        :'heartbeat_interval_seconds' => :'Integer',
        :'max_heartbeat_lateness_before_alert_seconds' => :'Integer',
        :'max_heartbeat_lateness_before_abandonment_seconds' => :'Integer',
        :'schedule' => :'String',
        :'scheduled_instance_count' => :'Integer',
        :'is_service' => :'Boolean',
        :'service_instance_count' => :'Integer',
        :'min_service_instance_count' => :'Integer',
        :'max_concurrency' => :'Integer',
        :'max_age_seconds' => :'Integer',
        :'default_max_retries' => :'Integer',
        :'project_url' => :'String',
        :'log_query' => :'String',
        :'logs_url' => :'String',
        :'links' => :'Array<Link>',
        :'run_environment' => :'NameAndUuid',
        :'execution_method_capability' => :'ExecutionMethodCapability',
        :'alert_methods' => :'Array<NameAndUuid>',
        :'other_metadata' => :'Hash<String, Object>',
        :'latest_task_execution' => :'TaskExecution',
        :'current_service_info' => :'CurrentServiceInfo',
        :'created_by_user' => :'String',
        :'created_by_group' => :'Group',
        :'was_auto_created' => :'Boolean',
        :'passive' => :'Boolean',
        :'enabled' => :'Boolean',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'infrastructure_website_url',
        :'max_manual_start_delay_before_alert_seconds',
        :'max_manual_start_delay_before_abandonment_seconds',
        :'heartbeat_interval_seconds',
        :'max_heartbeat_lateness_before_alert_seconds',
        :'max_heartbeat_lateness_before_abandonment_seconds',
        :'scheduled_instance_count',
        :'service_instance_count',
        :'min_service_instance_count',
        :'max_concurrency',
        :'max_age_seconds',
        :'logs_url',
        :'run_environment',
        :'execution_method_capability',
        :'other_metadata',
        :'latest_task_execution',
        :'current_service_info',
        :'created_by_group',
        :'was_auto_created',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CloudReactorAPIClient::PatchedTask` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CloudReactorAPIClient::PatchedTask`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'infrastructure_website_url')
        self.infrastructure_website_url = attributes[:'infrastructure_website_url']
      end

      if attributes.key?(:'max_manual_start_delay_before_alert_seconds')
        self.max_manual_start_delay_before_alert_seconds = attributes[:'max_manual_start_delay_before_alert_seconds']
      end

      if attributes.key?(:'max_manual_start_delay_before_abandonment_seconds')
        self.max_manual_start_delay_before_abandonment_seconds = attributes[:'max_manual_start_delay_before_abandonment_seconds']
      end

      if attributes.key?(:'heartbeat_interval_seconds')
        self.heartbeat_interval_seconds = attributes[:'heartbeat_interval_seconds']
      end

      if attributes.key?(:'max_heartbeat_lateness_before_alert_seconds')
        self.max_heartbeat_lateness_before_alert_seconds = attributes[:'max_heartbeat_lateness_before_alert_seconds']
      end

      if attributes.key?(:'max_heartbeat_lateness_before_abandonment_seconds')
        self.max_heartbeat_lateness_before_abandonment_seconds = attributes[:'max_heartbeat_lateness_before_abandonment_seconds']
      end

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'scheduled_instance_count')
        self.scheduled_instance_count = attributes[:'scheduled_instance_count']
      end

      if attributes.key?(:'is_service')
        self.is_service = attributes[:'is_service']
      end

      if attributes.key?(:'service_instance_count')
        self.service_instance_count = attributes[:'service_instance_count']
      end

      if attributes.key?(:'min_service_instance_count')
        self.min_service_instance_count = attributes[:'min_service_instance_count']
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

      if attributes.key?(:'project_url')
        self.project_url = attributes[:'project_url']
      end

      if attributes.key?(:'log_query')
        self.log_query = attributes[:'log_query']
      end

      if attributes.key?(:'logs_url')
        self.logs_url = attributes[:'logs_url']
      end

      if attributes.key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.key?(:'run_environment')
        self.run_environment = attributes[:'run_environment']
      end

      if attributes.key?(:'execution_method_capability')
        self.execution_method_capability = attributes[:'execution_method_capability']
      end

      if attributes.key?(:'alert_methods')
        if (value = attributes[:'alert_methods']).is_a?(Array)
          self.alert_methods = value
        end
      end

      if attributes.key?(:'other_metadata')
        if (value = attributes[:'other_metadata']).is_a?(Hash)
          self.other_metadata = value
        end
      end

      if attributes.key?(:'latest_task_execution')
        self.latest_task_execution = attributes[:'latest_task_execution']
      end

      if attributes.key?(:'current_service_info')
        self.current_service_info = attributes[:'current_service_info']
      end

      if attributes.key?(:'created_by_user')
        self.created_by_user = attributes[:'created_by_user']
      end

      if attributes.key?(:'created_by_group')
        self.created_by_group = attributes[:'created_by_group']
      end

      if attributes.key?(:'was_auto_created')
        self.was_auto_created = attributes[:'was_auto_created']
      end

      if attributes.key?(:'passive')
        self.passive = attributes[:'passive']
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
      if !@name.nil? && @name.to_s.length > 200
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 200.')
      end

      if !@description.nil? && @description.to_s.length > 5000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 5000.')
      end

      if !@max_manual_start_delay_before_alert_seconds.nil? && @max_manual_start_delay_before_alert_seconds > 2147483647
        invalid_properties.push('invalid value for "max_manual_start_delay_before_alert_seconds", must be smaller than or equal to 2147483647.')
      end

      if !@max_manual_start_delay_before_alert_seconds.nil? && @max_manual_start_delay_before_alert_seconds < 0
        invalid_properties.push('invalid value for "max_manual_start_delay_before_alert_seconds", must be greater than or equal to 0.')
      end

      if !@max_manual_start_delay_before_abandonment_seconds.nil? && @max_manual_start_delay_before_abandonment_seconds > 2147483647
        invalid_properties.push('invalid value for "max_manual_start_delay_before_abandonment_seconds", must be smaller than or equal to 2147483647.')
      end

      if !@max_manual_start_delay_before_abandonment_seconds.nil? && @max_manual_start_delay_before_abandonment_seconds < 0
        invalid_properties.push('invalid value for "max_manual_start_delay_before_abandonment_seconds", must be greater than or equal to 0.')
      end

      if !@heartbeat_interval_seconds.nil? && @heartbeat_interval_seconds > 2147483647
        invalid_properties.push('invalid value for "heartbeat_interval_seconds", must be smaller than or equal to 2147483647.')
      end

      if !@heartbeat_interval_seconds.nil? && @heartbeat_interval_seconds < 10
        invalid_properties.push('invalid value for "heartbeat_interval_seconds", must be greater than or equal to 10.')
      end

      if !@max_heartbeat_lateness_before_alert_seconds.nil? && @max_heartbeat_lateness_before_alert_seconds > 2147483647
        invalid_properties.push('invalid value for "max_heartbeat_lateness_before_alert_seconds", must be smaller than or equal to 2147483647.')
      end

      if !@max_heartbeat_lateness_before_alert_seconds.nil? && @max_heartbeat_lateness_before_alert_seconds < 0
        invalid_properties.push('invalid value for "max_heartbeat_lateness_before_alert_seconds", must be greater than or equal to 0.')
      end

      if !@max_heartbeat_lateness_before_abandonment_seconds.nil? && @max_heartbeat_lateness_before_abandonment_seconds > 2147483647
        invalid_properties.push('invalid value for "max_heartbeat_lateness_before_abandonment_seconds", must be smaller than or equal to 2147483647.')
      end

      if !@max_heartbeat_lateness_before_abandonment_seconds.nil? && @max_heartbeat_lateness_before_abandonment_seconds < 0
        invalid_properties.push('invalid value for "max_heartbeat_lateness_before_abandonment_seconds", must be greater than or equal to 0.')
      end

      if !@schedule.nil? && @schedule.to_s.length > 1000
        invalid_properties.push('invalid value for "schedule", the character length must be smaller than or equal to 1000.')
      end

      if !@scheduled_instance_count.nil? && @scheduled_instance_count > 2147483647
        invalid_properties.push('invalid value for "scheduled_instance_count", must be smaller than or equal to 2147483647.')
      end

      if !@scheduled_instance_count.nil? && @scheduled_instance_count < 0
        invalid_properties.push('invalid value for "scheduled_instance_count", must be greater than or equal to 0.')
      end

      if !@service_instance_count.nil? && @service_instance_count > 2147483647
        invalid_properties.push('invalid value for "service_instance_count", must be smaller than or equal to 2147483647.')
      end

      if !@service_instance_count.nil? && @service_instance_count < 0
        invalid_properties.push('invalid value for "service_instance_count", must be greater than or equal to 0.')
      end

      if !@min_service_instance_count.nil? && @min_service_instance_count > 2147483647
        invalid_properties.push('invalid value for "min_service_instance_count", must be smaller than or equal to 2147483647.')
      end

      if !@min_service_instance_count.nil? && @min_service_instance_count < 0
        invalid_properties.push('invalid value for "min_service_instance_count", must be greater than or equal to 0.')
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

      if !@max_age_seconds.nil? && @max_age_seconds < 0
        invalid_properties.push('invalid value for "max_age_seconds", must be greater than or equal to 0.')
      end

      if !@default_max_retries.nil? && @default_max_retries > 2147483647
        invalid_properties.push('invalid value for "default_max_retries", must be smaller than or equal to 2147483647.')
      end

      if !@default_max_retries.nil? && @default_max_retries < 0
        invalid_properties.push('invalid value for "default_max_retries", must be greater than or equal to 0.')
      end

      if !@project_url.nil? && @project_url.to_s.length > 1000
        invalid_properties.push('invalid value for "project_url", the character length must be smaller than or equal to 1000.')
      end

      if !@log_query.nil? && @log_query.to_s.length > 1000
        invalid_properties.push('invalid value for "log_query", the character length must be smaller than or equal to 1000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 200
      return false if !@description.nil? && @description.to_s.length > 5000
      return false if !@max_manual_start_delay_before_alert_seconds.nil? && @max_manual_start_delay_before_alert_seconds > 2147483647
      return false if !@max_manual_start_delay_before_alert_seconds.nil? && @max_manual_start_delay_before_alert_seconds < 0
      return false if !@max_manual_start_delay_before_abandonment_seconds.nil? && @max_manual_start_delay_before_abandonment_seconds > 2147483647
      return false if !@max_manual_start_delay_before_abandonment_seconds.nil? && @max_manual_start_delay_before_abandonment_seconds < 0
      return false if !@heartbeat_interval_seconds.nil? && @heartbeat_interval_seconds > 2147483647
      return false if !@heartbeat_interval_seconds.nil? && @heartbeat_interval_seconds < 10
      return false if !@max_heartbeat_lateness_before_alert_seconds.nil? && @max_heartbeat_lateness_before_alert_seconds > 2147483647
      return false if !@max_heartbeat_lateness_before_alert_seconds.nil? && @max_heartbeat_lateness_before_alert_seconds < 0
      return false if !@max_heartbeat_lateness_before_abandonment_seconds.nil? && @max_heartbeat_lateness_before_abandonment_seconds > 2147483647
      return false if !@max_heartbeat_lateness_before_abandonment_seconds.nil? && @max_heartbeat_lateness_before_abandonment_seconds < 0
      return false if !@schedule.nil? && @schedule.to_s.length > 1000
      return false if !@scheduled_instance_count.nil? && @scheduled_instance_count > 2147483647
      return false if !@scheduled_instance_count.nil? && @scheduled_instance_count < 0
      return false if !@service_instance_count.nil? && @service_instance_count > 2147483647
      return false if !@service_instance_count.nil? && @service_instance_count < 0
      return false if !@min_service_instance_count.nil? && @min_service_instance_count > 2147483647
      return false if !@min_service_instance_count.nil? && @min_service_instance_count < 0
      return false if !@max_concurrency.nil? && @max_concurrency > 2147483647
      return false if !@max_concurrency.nil? && @max_concurrency < -2147483648
      return false if !@max_age_seconds.nil? && @max_age_seconds > 2147483647
      return false if !@max_age_seconds.nil? && @max_age_seconds < 0
      return false if !@default_max_retries.nil? && @default_max_retries > 2147483647
      return false if !@default_max_retries.nil? && @default_max_retries < 0
      return false if !@project_url.nil? && @project_url.to_s.length > 1000
      return false if !@log_query.nil? && @log_query.to_s.length > 1000
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
    # @param [Object] max_manual_start_delay_before_alert_seconds Value to be assigned
    def max_manual_start_delay_before_alert_seconds=(max_manual_start_delay_before_alert_seconds)
      if !max_manual_start_delay_before_alert_seconds.nil? && max_manual_start_delay_before_alert_seconds > 2147483647
        fail ArgumentError, 'invalid value for "max_manual_start_delay_before_alert_seconds", must be smaller than or equal to 2147483647.'
      end

      if !max_manual_start_delay_before_alert_seconds.nil? && max_manual_start_delay_before_alert_seconds < 0
        fail ArgumentError, 'invalid value for "max_manual_start_delay_before_alert_seconds", must be greater than or equal to 0.'
      end

      @max_manual_start_delay_before_alert_seconds = max_manual_start_delay_before_alert_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] max_manual_start_delay_before_abandonment_seconds Value to be assigned
    def max_manual_start_delay_before_abandonment_seconds=(max_manual_start_delay_before_abandonment_seconds)
      if !max_manual_start_delay_before_abandonment_seconds.nil? && max_manual_start_delay_before_abandonment_seconds > 2147483647
        fail ArgumentError, 'invalid value for "max_manual_start_delay_before_abandonment_seconds", must be smaller than or equal to 2147483647.'
      end

      if !max_manual_start_delay_before_abandonment_seconds.nil? && max_manual_start_delay_before_abandonment_seconds < 0
        fail ArgumentError, 'invalid value for "max_manual_start_delay_before_abandonment_seconds", must be greater than or equal to 0.'
      end

      @max_manual_start_delay_before_abandonment_seconds = max_manual_start_delay_before_abandonment_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] heartbeat_interval_seconds Value to be assigned
    def heartbeat_interval_seconds=(heartbeat_interval_seconds)
      if !heartbeat_interval_seconds.nil? && heartbeat_interval_seconds > 2147483647
        fail ArgumentError, 'invalid value for "heartbeat_interval_seconds", must be smaller than or equal to 2147483647.'
      end

      if !heartbeat_interval_seconds.nil? && heartbeat_interval_seconds < 10
        fail ArgumentError, 'invalid value for "heartbeat_interval_seconds", must be greater than or equal to 10.'
      end

      @heartbeat_interval_seconds = heartbeat_interval_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] max_heartbeat_lateness_before_alert_seconds Value to be assigned
    def max_heartbeat_lateness_before_alert_seconds=(max_heartbeat_lateness_before_alert_seconds)
      if !max_heartbeat_lateness_before_alert_seconds.nil? && max_heartbeat_lateness_before_alert_seconds > 2147483647
        fail ArgumentError, 'invalid value for "max_heartbeat_lateness_before_alert_seconds", must be smaller than or equal to 2147483647.'
      end

      if !max_heartbeat_lateness_before_alert_seconds.nil? && max_heartbeat_lateness_before_alert_seconds < 0
        fail ArgumentError, 'invalid value for "max_heartbeat_lateness_before_alert_seconds", must be greater than or equal to 0.'
      end

      @max_heartbeat_lateness_before_alert_seconds = max_heartbeat_lateness_before_alert_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] max_heartbeat_lateness_before_abandonment_seconds Value to be assigned
    def max_heartbeat_lateness_before_abandonment_seconds=(max_heartbeat_lateness_before_abandonment_seconds)
      if !max_heartbeat_lateness_before_abandonment_seconds.nil? && max_heartbeat_lateness_before_abandonment_seconds > 2147483647
        fail ArgumentError, 'invalid value for "max_heartbeat_lateness_before_abandonment_seconds", must be smaller than or equal to 2147483647.'
      end

      if !max_heartbeat_lateness_before_abandonment_seconds.nil? && max_heartbeat_lateness_before_abandonment_seconds < 0
        fail ArgumentError, 'invalid value for "max_heartbeat_lateness_before_abandonment_seconds", must be greater than or equal to 0.'
      end

      @max_heartbeat_lateness_before_abandonment_seconds = max_heartbeat_lateness_before_abandonment_seconds
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
    # @param [Object] scheduled_instance_count Value to be assigned
    def scheduled_instance_count=(scheduled_instance_count)
      if !scheduled_instance_count.nil? && scheduled_instance_count > 2147483647
        fail ArgumentError, 'invalid value for "scheduled_instance_count", must be smaller than or equal to 2147483647.'
      end

      if !scheduled_instance_count.nil? && scheduled_instance_count < 0
        fail ArgumentError, 'invalid value for "scheduled_instance_count", must be greater than or equal to 0.'
      end

      @scheduled_instance_count = scheduled_instance_count
    end

    # Custom attribute writer method with validation
    # @param [Object] service_instance_count Value to be assigned
    def service_instance_count=(service_instance_count)
      if !service_instance_count.nil? && service_instance_count > 2147483647
        fail ArgumentError, 'invalid value for "service_instance_count", must be smaller than or equal to 2147483647.'
      end

      if !service_instance_count.nil? && service_instance_count < 0
        fail ArgumentError, 'invalid value for "service_instance_count", must be greater than or equal to 0.'
      end

      @service_instance_count = service_instance_count
    end

    # Custom attribute writer method with validation
    # @param [Object] min_service_instance_count Value to be assigned
    def min_service_instance_count=(min_service_instance_count)
      if !min_service_instance_count.nil? && min_service_instance_count > 2147483647
        fail ArgumentError, 'invalid value for "min_service_instance_count", must be smaller than or equal to 2147483647.'
      end

      if !min_service_instance_count.nil? && min_service_instance_count < 0
        fail ArgumentError, 'invalid value for "min_service_instance_count", must be greater than or equal to 0.'
      end

      @min_service_instance_count = min_service_instance_count
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

      if !max_age_seconds.nil? && max_age_seconds < 0
        fail ArgumentError, 'invalid value for "max_age_seconds", must be greater than or equal to 0.'
      end

      @max_age_seconds = max_age_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] default_max_retries Value to be assigned
    def default_max_retries=(default_max_retries)
      if !default_max_retries.nil? && default_max_retries > 2147483647
        fail ArgumentError, 'invalid value for "default_max_retries", must be smaller than or equal to 2147483647.'
      end

      if !default_max_retries.nil? && default_max_retries < 0
        fail ArgumentError, 'invalid value for "default_max_retries", must be greater than or equal to 0.'
      end

      @default_max_retries = default_max_retries
    end

    # Custom attribute writer method with validation
    # @param [Object] project_url Value to be assigned
    def project_url=(project_url)
      if !project_url.nil? && project_url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "project_url", the character length must be smaller than or equal to 1000.'
      end

      @project_url = project_url
    end

    # Custom attribute writer method with validation
    # @param [Object] log_query Value to be assigned
    def log_query=(log_query)
      if !log_query.nil? && log_query.to_s.length > 1000
        fail ArgumentError, 'invalid value for "log_query", the character length must be smaller than or equal to 1000.'
      end

      @log_query = log_query
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
          infrastructure_website_url == o.infrastructure_website_url &&
          max_manual_start_delay_before_alert_seconds == o.max_manual_start_delay_before_alert_seconds &&
          max_manual_start_delay_before_abandonment_seconds == o.max_manual_start_delay_before_abandonment_seconds &&
          heartbeat_interval_seconds == o.heartbeat_interval_seconds &&
          max_heartbeat_lateness_before_alert_seconds == o.max_heartbeat_lateness_before_alert_seconds &&
          max_heartbeat_lateness_before_abandonment_seconds == o.max_heartbeat_lateness_before_abandonment_seconds &&
          schedule == o.schedule &&
          scheduled_instance_count == o.scheduled_instance_count &&
          is_service == o.is_service &&
          service_instance_count == o.service_instance_count &&
          min_service_instance_count == o.min_service_instance_count &&
          max_concurrency == o.max_concurrency &&
          max_age_seconds == o.max_age_seconds &&
          default_max_retries == o.default_max_retries &&
          project_url == o.project_url &&
          log_query == o.log_query &&
          logs_url == o.logs_url &&
          links == o.links &&
          run_environment == o.run_environment &&
          execution_method_capability == o.execution_method_capability &&
          alert_methods == o.alert_methods &&
          other_metadata == o.other_metadata &&
          latest_task_execution == o.latest_task_execution &&
          current_service_info == o.current_service_info &&
          created_by_user == o.created_by_user &&
          created_by_group == o.created_by_group &&
          was_auto_created == o.was_auto_created &&
          passive == o.passive &&
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
      [url, uuid, name, description, dashboard_url, infrastructure_website_url, max_manual_start_delay_before_alert_seconds, max_manual_start_delay_before_abandonment_seconds, heartbeat_interval_seconds, max_heartbeat_lateness_before_alert_seconds, max_heartbeat_lateness_before_abandonment_seconds, schedule, scheduled_instance_count, is_service, service_instance_count, min_service_instance_count, max_concurrency, max_age_seconds, default_max_retries, project_url, log_query, logs_url, links, run_environment, execution_method_capability, alert_methods, other_metadata, latest_task_execution, current_service_info, created_by_user, created_by_group, was_auto_created, passive, enabled, created_at, updated_at].hash
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
