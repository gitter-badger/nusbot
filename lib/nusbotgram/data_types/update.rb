module NUSBotgram
  module DataTypes
    # Telegram Update data type.
    #
    # @attr [Integer] update_id The update‘s unique identifier. Update identifiers start from a certain positive number and increase sequentially.
    # @attr [NUSBotgram::DataTypes::Message] message Optional. New incoming message of any kind - text, photo, sticker, etc.
    #
    # See more at https://core.telegram.org/bots/api#update
    class Update < NUSBotgram::DataTypes::Base
      attribute :update_id, Integer
      attribute :message, Message
    end
  end
end
