require 'socket'

require 'spec_helper'
require 'cloudreactor_wrapper_io'

describe CloudReactorWrapperIO::StatusUpdater do
  let(:enabled) { true }
  let(:param_port) { nil }
  let(:port) { param_port || 2373 }
  let(:status_updater) do
    CloudReactorWrapperIO::StatusUpdater.new(enabled: enabled, port: param_port)
  end

  let(:success_count) { nil }
  let(:error_count) { nil }
  let(:skipped_count) { nil }
  let(:expected_count) { nil }
  let(:last_status_message) { nil }
  let(:extra_props) { nil }
  let(:read_socket) { UDPSocket.new }

  before do
    read_socket.bind('127.0.01', port)

    status_updater.send_update(success_count: success_count,
      error_count: error_count, skipped_count: skipped_count,
      expected_count: expected_count,
      last_status_message: last_status_message,
      extra_props: extra_props)
  end

  after do
    read_socket.close
  end

  def read_from_socket!
    # recvfrom returns an array of a the message and the address
    read_socket.recvfrom(10000)[0]
  end

  subject do
    read_from_socket!
  end

  def check_send(attr: :success_count, count: 1)
    status_updater.send_update(attr => count)
    expect(read_from_socket!).to eq({
      attr => count
    }.to_json + "\n")
  end

  def check_nothing_sent
    expect(read_socket.read_nonblock(1, exception: false)).to eq(
      :wait_readable)
  end

  context 'no info' do
    it 'should not send anything' do
      check_nothing_sent()
    end
  end

  context 'success_count is set' do
    let(:success_count) { 10 }

    it 'sends the success_count' do
      check_send(count: success_count)
    end
  end

  context 'error_count is set' do
    let(:error_count) { 45 }

    it 'sends the error_count' do
      check_send(attr: :error_count, count: error_count)
    end
  end

  context 'skipped_count is set' do
    let(:skipped_count) { 61 }

    it 'sends the skipped_count' do
      check_send(attr: :skipped_count, count: skipped_count)
    end
  end

  context 'expected_count is set' do
    let(:expected_count) { 6113 }

    it 'sends the expected_count' do
      check_send(attr: :expected_count, count: expected_count)
    end
  end

  context 'last_status_message is set' do
    let(:last_status_message) { 'Yo Adrian!' }
    it 'should send the last_status_message' do
      expect(subject).to eq({
        'last_status_message' => last_status_message
      }.to_json + "\n")
    end

    context 'multiple messages' do
      it 'should send twice' do
        subject
        check_send
      end
    end
  end

  context 'extra props are set' do
    let(:success_count) { 5 }
    let(:extra_props) do
      {
        a: [1, 2],
        b: true,
        c: {
          d: nil
        }
      }
    end

    it 'should send merged props' do
      expect(subject).to eq({
        success_count: success_count
      }.merge(extra_props).to_json + "\n")
    end
  end

  context 'different port' do
    let(:param_port) { 3232 }

    it 'should use the argument port' do
      expect(status_updater.port).to eq(param_port)
      check_send
    end
  end

  context 'disabled' do
    let(:enabled) { false }

    it 'should not send anything' do
      expect(status_updater.enabled).to eq(false)
      check_nothing_sent()
    end
  end
end
