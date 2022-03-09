require 'logger'

module CloudReactorWrapperIO
  class StatusUpdater
    DEFAULT_STATUS_UPDATE_PORT = 2373

    def initialize(logger: nil)
      @logger = logger

      unless @logger
        if const_defined?(:Rails)
          @logger = Rails.logger
        else
          @logger = Logger.new(STDOUT)
        end
      end

      @socket = nil
      @port = nil
      @enabled = (ENV['PROC_WRAPPER_ENABLE_STATUS_UPDATE_LISTENER'] || 'FALSE').upcase == 'TRUE'

      if @enabled
        @logger.info('ProcessStatusUpdater is enabled')
      else
        @logger.info('ProcessStatusUpdater is disabled')
        return
      end

      @port = (ENV['PROC_WRAPPER_STATUS_UPDATE_SOCKET_PORT'] || DEFAULT_STATUS_UPDATE_PORT).to_i

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

    def send_update(success_count: nil, error_count: nil, skipped_count: nil,
      expected_count: nil, last_status_message: nil, extra_props: nil)
      unless @enabled
        return
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

      message = status_hash.to_json + "\n"

      begin
        socket.send(message, 0, '127.0.0.1', @port)
      rescue => ex
        @logger.debug("Can't send status update, resetting socket")
        @socket = nil
      end
    end

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
