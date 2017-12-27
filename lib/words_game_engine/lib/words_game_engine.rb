module WordsGameEngine
  extend ActiveSupport::Autoload

  autoload :Application, File.expand_path("../words_game_engine/application", __FILE__)
  autoload :HotKey, File.expand_path("../words_game_engine/hot_key", __FILE__)
  autoload :Command, File.expand_path("../words_game_engine/command", __FILE__)
  autoload :AssetFactory, File.expand_path("../words_game_engine/factory_boy", __FILE__)
end