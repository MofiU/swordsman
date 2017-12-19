module WordsGameEngine
  module HotKey
    class Base
      attr_reader :command
      def initialize(command)
        @command = command
      end

      def click
        command.execute
      end

    end
  end
end