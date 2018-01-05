module Server
  module API
    extend ActiveSupport::Autoload

    autoload :Player
    autoload :Map
    autoload :Race
  end
end