module WordsGameEngine
  module Command
    extend ActiveSupport::Autoload

    autoload :BaseCommand, File.expand_path("../command/base_command", __FILE__)
    autoload :ShowPlayAttributeCommand, File.expand_path("../command/show_player_attribute_command", __FILE__)

    def self.const_missing(name)
      raise InvalidCommand, '无效命令'
    end

    class InvalidCommand < StandardError; end

  end
end