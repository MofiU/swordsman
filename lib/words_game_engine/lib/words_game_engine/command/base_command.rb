module WordsGameEngine
  module Command
    class BaseCommand
      attr_reader :description

      def initialize
        raise '请重写Command初始化方法'
      end

      def execute
        p 'execute command'
      end
    end
  end
end