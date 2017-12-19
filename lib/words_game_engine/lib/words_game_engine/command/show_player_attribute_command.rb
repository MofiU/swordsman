module WordsGameEngine
  module Command
    class ShowPlayAttributeCommand < BaseCommand

      def initialize
        @description = '显示玩家属性信息'
      end

      def execute
        p '----------------'
        p 'player: zhangsan'
        p 'age: 18'
        p '----------------'
      end
    end
  end
end