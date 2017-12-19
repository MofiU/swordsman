module WordsGameEngine
  module Map
    extend ActiveSupport::Autoload

    autoload :Base, File.expand_path("../map/base", __FILE__)
    autoload :Base, File.expand_path("../map/chang_an", __FILE__)

  end
end