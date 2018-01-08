require File.expand_path('../../../config/boot', __FILE__)
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

    def initialize
      @hot_keys = YAML.load_file 'app/client/config/hot_key.yml'
    end

    def run
      loading_player
      listen_keyboard
    end

    def loading_player
      if File.exist?('app/client/config/pid')
        current_player_id = File.read('app/client/config/pid')
        self.current_player = Controller::PlayerController.new.get current_player_id
      else
        Controller::PlayerController.new.new

      end
    end

    def listen_keyboard
      View::Application::Menu.render
      loop do
        puts '亲，想干哈呢？'
        hot_key = STDIN.gets.chomp
        next if hot_key.blank?
        command = hot_keys[hot_key]
        if command.blank?
          puts '无效的快捷键，请按H获取键位帮助'
          next
        end
        Controller.const_get("#{command['controller']}_controller".classify).new.send(command['action'])

      end
    end

  end
end