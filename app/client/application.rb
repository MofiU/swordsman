require 'singleton'

Dir["#{File.expand_path('../command', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../controller', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../view', __FILE__)}/**/*.rb"].each {|file| require file }

module Client

  class Application
    attr_reader :current_player
    include Singleton

    def self.current_player
      instance.current_player
    end

    def initialize
      @current_player = Server::Life.first
    end

  end
end