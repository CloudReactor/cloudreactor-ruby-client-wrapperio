require 'spec_helper'

describe CloudReactorWrapperIO::StatusUpdater do
  let(:status_updater) do
    CloudReactorWrapperIO::StatusUpdater(enabled: true)
  end

  let(:success_count) { nil }
  let(:error_count) { nil }
  let(:skipped_count) { nil }
  let(:expected_count) { nil }
  let(:extra_props) { nil }
  let(:read_socket) { UDPSocket.new }

  subject do
    status_updater.send_update(success_count: success_count,
      error_count: error_count, skipped_count: skipped_count,
      expected_count: expected_count, extra_props: extra_props)
  end

  context 'last_status_message is set'
    let(:last_status_message) { 'Yo Adian!' }
    subject
  end
end