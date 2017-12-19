require File.expand_path('../boot', __FILE__)

module Swordsman
  class Application < WordsGameEngine::Application
    include Wizard

    def initialize
      initialize_game_world
    end

    def start_game
      listen
    end

  end
end
Swordsman::Application.instance.start_game