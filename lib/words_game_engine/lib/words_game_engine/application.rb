require 'singleton'
module WordsGameEngine
  class Application
    include Singleton

    def listen
      key_a = HotKey::Key_A.new(Command::ShowPlayAttributeCommand.new)
      loop do
        p 'please input command'
        #get the first key
        input = gets.chomp[0]
        next if input.nil?
        p "what you input is #{input}"
        eval("key_#{input}").click
      end
    end

  end
end