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
  class WorkflowExecutionStopReason
    MANUAL = "MANUAL".freeze
    MAX_EXECUTION_TIME_EXCEEDED = "MAX_EXECUTION_TIME_EXCEEDED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = WorkflowExecutionStopReason.constants.select { |c| WorkflowExecutionStopReason::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #WorkflowExecutionStopReason" if constantValues.empty?
      value
    end
  end
end
