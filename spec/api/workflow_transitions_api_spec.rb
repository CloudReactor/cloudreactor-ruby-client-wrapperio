=begin
#CloudReactor API

#CloudReactor API Documentation

The version of the OpenAPI document: 0.2.0
Contact: jeff@cloudreactor.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudReactorAPIClient::WorkflowTransitionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WorkflowTransitionsApi' do
  before do
    # run before each test
    @api_instance = CloudReactorAPIClient::WorkflowTransitionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowTransitionsApi' do
    it 'should create an instance of WorkflowTransitionsApi' do
      expect(@api_instance).to be_instance_of(CloudReactorAPIClient::WorkflowTransitionsApi)
    end
  end

  # unit tests for workflow_transitions_create
  # @param workflow_transition 
  # @param [Hash] opts the optional parameters
  # @return [WorkflowTransition]
  describe 'workflow_transitions_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for workflow_transitions_destroy
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'workflow_transitions_destroy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for workflow_transitions_list
  # @param [Hash] opts the optional parameters
  # @option opts [String] :description 
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :ordering Which field to use when ordering the results.
  # @option opts [String] :search A search term.
  # @return [PaginatedWorkflowTransitionList]
  describe 'workflow_transitions_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for workflow_transitions_partial_update
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [PatchedWorkflowTransition] :patched_workflow_transition 
  # @return [WorkflowTransition]
  describe 'workflow_transitions_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for workflow_transitions_retrieve
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [WorkflowTransition]
  describe 'workflow_transitions_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for workflow_transitions_update
  # @param uuid 
  # @param workflow_transition 
  # @param [Hash] opts the optional parameters
  # @return [WorkflowTransition]
  describe 'workflow_transitions_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
