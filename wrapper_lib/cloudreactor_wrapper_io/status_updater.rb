require 'json'
require 'logger'
require 'socket'

# @note You must require the cloudreactor_wrapper_io module to use this service,
# even in Rails!
# @example
#   require 'cloudreactor_wrapper_io'
#   status_updater = CloudReactorWrapperIO::StatusUpdater.new()
#   begin
#     status_updater.send_update(
#       success_count: 1,
#       error_count: 2,
#       last_status_message: 'running'
#     )
#   ensure
#     status_updater.close()
#   end
module CloudReactorWrapperIO
  # A service used to update the CloudReactor service of the status of
  # a currently running process. The service sends UDP messages to a
  # process wrapper, which then forwards the updates to CloudReactor.
  # @author Jeff Tsay (jeff@cloudreactor.io)
  class StatusUpdater
    DEFAULT_STATUS_UPDATE_PORT = 2373

    attr_reader :enabled
    attr_reader :port

    # Create a new instance.
    # @param enabled [Boolean, nil] true to enable updates. If nil, will use the
    #   PROC_WRAPPER_ENABLE_STATUS_UPDATE_LISTENER environment variable.
    # @param port [Integer, nil] the port number to use. If nil, will use the
    #   PROC_WRAPPER_STATUS_UPDATE_SOCKET_PORT environment variable, or 2373
    #   if the environment variable is not available.
    # @param logger [Logger, nil] the logger to use. If nil, will use
    #   Rails.logger if available, otherwise will create a new Logger.
    def initialize(enabled: nil, port: nil, logger: nil)
      @logger = logger

      unless @logger
        if defined?(Rails)
          @logger = Rails.logger
        else
          @logger = Logger.new(STDOUT)
        end
      end

      @socket = nil
      @port = nil

      if enabled.nil?
        @enabled = (ENV['PROC_WRAPPER_ENABLE_STATUS_UPDATE_LISTENER'] ||
          'FALSE').upcase == 'TRUE'
      else
        @enabled = enabled
      end

      if @enabled
        @logger.info('ProcessStatusUpdater is enabled')
      else
        @logger.info('ProcessStatusUpdater is disabled')
        return
      end

      if port.nil?
        @port = (ENV['PROC_WRAPPER_STATUS_UPDATE_SOCKET_PORT'] ||
          DEFAULT_STATUS_UPDATE_PORT).to_i
      else
        @port = port
      end

      at_exit do
        @logger.info('Shutting down status update socket ...')
        begin
          if @socket
            @socket.shutdown
            @socket = nil
            @logger.info('Done shutting down status update socket.')
          else
            @logger.info('No socket to close.')
          end
        rescue => ex
          @logger.info('Error shutting down status update socket.')
        end
      end
    end


    # Sends an update message to the process wrapper. The process wrapper should
    # merge updates together until it is time to send a heartbeat to the
    # server, so it should be safe to call this method rapidly.
    # Messages are not guaranteed to be sent successfully, but in practice
    # they almost always are.
    #
    # @param success_count [Integer, nil] The number of successful items so far
    # @param error_count [Integer, nil] The number of failed items so far
    # @param skipped_count [Integer, nil] The number of skipped items so far
    # @param expected_count [Integer, nil] The number of expected items
    # @param last_status_message [String, nil] A status message
    # @param [Hash, nil] extra_props Additional properties to send
    # @return [Boolean] True if the update was sent, false otherwise
    def send_update(success_count: nil, error_count: nil, skipped_count: nil,
      expected_count: nil, last_status_message: nil, extra_props: nil)
      unless @enabled
        return false
      end

      status_hash = {}

      unless success_count.nil?
        status_hash[:success_count] = success_count
      end

      unless error_count.nil?
        status_hash[:error_count] = error_count
      end

      unless skipped_count.nil?
        status_hash[:skipped_count] = skipped_count
      end

      unless expected_count.nil?
        status_hash[:expected_count] = expected_count
      end

      unless last_status_message.nil?
        status_hash[:last_status_message] = last_status_message
      end

      if extra_props
        status_hash.merge!(extra_props)
      end

      if status_hash.empty?
        return false
      end

      message = status_hash.to_json + "\n"

      begin
        socket.send(message, 0, '127.0.0.1', @port)
        true
      rescue => ex
        @logger.debug("Can't send status update, resetting socket")
        @socket = nil
        false
      end
    end

    # Close any resources associated with this instance.
    def close
      if @socket
        @socket.shutdown
        @socket = nil
      end
    end

    private

      def socket
        @socket || UDPSocket.new
      end
  end
end
