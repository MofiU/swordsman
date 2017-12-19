module WordsGameEngine
  module HotKey
    extend ActiveSupport::Autoload

    autoload :Base, File.expand_path("../hot_key/base", __FILE__)
    autoload :Key_A, File.expand_path("../hot_key/key_a", __FILE__)

    def self.const_missing(name)
      raise InvalidKey, '无效快捷键'
    end

    class InvalidKey < StandardError; end

  end
end