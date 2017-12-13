require File.expand_path('../boot', __FILE__)

module Swordsman
  class Application
    def self.run
      p "Go Go! Let's Go!"
      User.all
    end
  end
end
Swordsman::Application.run