module NUSBotgram
  module DataTypes
    # Telegram UserProfilePhotos data type.
    #
    # @attr [Integer] total_count Total number of profile pictures the target user has
    # @attr [NUSBotgram::DataTypes::PhotoSize] photos Requested profile pictures (in up to 4 sizes each)
    #
    # See more at https://core.telegram.org/bots/api#userprofilephotos
    class UserProfilePhotos < NUSBotgram::DataTypes::Base
      attribute :total_count, Integer
      attribute :photos, Array[PhotoSize]
    end
  end
end
