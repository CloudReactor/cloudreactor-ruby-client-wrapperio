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
  class StopReasonEnum
    MANUAL = "MANUAL".freeze
    MAX_EXECUTION_TIME_EXCEEDED = "MAX_EXECUTION_TIME_EXCEEDED".freeze
    MISSING_HEARTBEAT = "MISSING_HEARTBEAT".freeze
    FAILED_TO_START = "FAILED_TO_START".freeze
    WORKFLOW_EXECUTION_STOPPED = "WORKFLOW_EXECUTION_STOPPED".freeze
    WORKFLOW_EXECUTION_RETRIED = "WORKFLOW_EXECUTION_RETRIED".freeze
    WORKFLOW_EXECUTION_TIMED_OUT = "WORKFLOW_EXECUTION_TIMED_OUT".freeze

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
      constantValues = StopReasonEnum.constants.select { |c| StopReasonEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #StopReasonEnum" if constantValues.empty?
      value
    end
  end
end
