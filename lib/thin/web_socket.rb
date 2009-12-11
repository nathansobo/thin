module Thin
  class WebSocket
    def initialize(request, connection)
      @request, @connection = request, connection
      send_handshake_reply
    end

    def send_handshake_reply

    end

    protected
    attr_reader :request, :connection
  end
end