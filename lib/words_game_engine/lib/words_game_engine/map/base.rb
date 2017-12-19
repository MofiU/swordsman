module WordsGameEngine
  module Map
    class Base
      attr_reader :name, :minimum_level
      def initialize(minimum_level = 0)
        @name = '未知地图'
        @minimum_level = minimum_level
      end
      end
    end
  end