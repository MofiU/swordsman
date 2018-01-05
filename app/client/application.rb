require 'singleton'

Dir["#{File.expand_path('../helper', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../command', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../controller', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../view', __FILE__)}/**/*.rb"].each {|file| require file }

module Client

  class Application
    attr_reader :hot_keys
    attr_accessor :current_player
    include Singleton

    def self.current_player
      instance.current_player
    end

    def initialize
      # @current_player = Server::Life.first
      Command::Player::Create.execute
      @hot_keys = YAML.load_file 'app/client/config/hot_key.yml'
    end

    def listen
      loop do
        p 'please input command'
        hot_key = STDIN.gets.chomp
        next if hot_key.nil?
        command = hot_keys[hot_key]
        Command.const_get("#{command['category'].classify}::#{command['action'].classify}").execute
      end
    end

  end
end