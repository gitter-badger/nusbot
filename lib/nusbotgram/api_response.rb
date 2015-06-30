module NUSBotgram
  class ApiResponse
    attr_reader :body
    attr_reader :result
    attr_reader :success

    def initialize(response)
      if response.code < 500
        @body = response.response_body

        data = MultiJson.load(@body)
        @success = data["ok"]

        if @success
          @result = data["result"]
        else
          raise NUSBotgram::Errors::BadRequestError.new(data["error_code"], data["description"])
        end
      else
        raise NUSBotgram::Errors::ServiceUnavailableError.new(response.code)
      end
    end

    alias_method :success?, :success
  end
end
