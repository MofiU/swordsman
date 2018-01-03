require File.expand_path('../boot', __FILE__)
require 'singleton'

module Swordsman
  module Server
    class Application# < WordsGameEngine::Application
      include Singleton
      include Wizard

      def initialize
        initialize_game_world
      end

      def start_game
        # listen
        key_a = HotKey::Key_A.new(Command::Player::ShowAttribute.new)
        loop do
          p 'please input command'
          #get the first key
          input = STDIN.gets.chomp[0]
          next if input.nil?
          p "what you input is #{input}"
          eval("key_#{input}").click
        end
      end

    end
  end
end
