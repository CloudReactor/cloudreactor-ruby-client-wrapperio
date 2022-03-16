require 'dotenv'
require 'spec_helper'

describe 'Task Execution Integration' do
  before do
    Dotenv.load('.env.test.local')
  end

  let(:config) do
    c = CloudReactorAPIClient::Configuration.new

    # Needed to override host
    c.server_index = nil

    c.host = ENV['CLOUDREACTOR_API_HOST']
    c.api_key['tokenAuth'] = ENV['CLOUDREACTOR_API_KEY']

    c
  end

  let(:api_client) do
    CloudReactorAPIClient::ApiClient.new(config)
  end

  let(:task) do
    t = CloudReactorAPIClient::NameAndUuid.new
    t.name = ENV['CLOUDREACTOR_SAMPLE_TASK_NAME']
    t
  end

  let(:task_execution) do
    te = CloudReactorAPIClient::TaskExecution.new
    te.task = task
    te.status = CloudReactorAPIClient::TaskExecutionStatus::MANUALLY_STARTED
    te
  end

  let(:te_api) { CloudReactorAPIClient::TaskExecutionsApi.new(api_client) }

  subject do
    te_api.task_executions_create(task_execution)
  end

  it 'should create a task execution' do
    expect(subject).is_a?(CloudReactorAPIClient::TaskExecution)
    expect(subject.uuid).not_to be_nil
    expect(subject.task.name).to eq(task.name)
    expect(subject.status).to eq(
      CloudReactorAPIClient::TaskExecutionStatus::MANUALLY_STARTED)
  end
end
