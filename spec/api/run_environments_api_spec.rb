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

# Unit tests for CloudReactorAPIClient::RunEnvironmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RunEnvironmentsApi' do
  before do
    # run before each test
    @api_instance = CloudReactorAPIClient::RunEnvironmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RunEnvironmentsApi' do
    it 'should create an instance of RunEnvironmentsApi' do
      expect(@api_instance).to be_instance_of(CloudReactorAPIClient::RunEnvironmentsApi)
    end
  end

  # unit tests for run_environments_clone_create
  # @param uuid 
  # @param run_environment 
  # @param [Hash] opts the optional parameters
  # @return [RunEnvironment]
  describe 'run_environments_clone_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_environments_create
  # @param run_environment 
  # @param [Hash] opts the optional parameters
  # @return [RunEnvironment]
  describe 'run_environments_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_environments_destroy
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'run_environments_destroy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_environments_list
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :created_by_group__id 
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [String] :name 
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :ordering Which field to use when ordering the results.
  # @option opts [String] :search A search term.
  # @return [PaginatedRunEnvironmentList]
  describe 'run_environments_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_environments_partial_update
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [PatchedRunEnvironment] :patched_run_environment 
  # @return [RunEnvironment]
  describe 'run_environments_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_environments_retrieve
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [RunEnvironment]
  describe 'run_environments_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_environments_update
  # @param uuid 
  # @param run_environment 
  # @param [Hash] opts the optional parameters
  # @return [RunEnvironment]
  describe 'run_environments_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
