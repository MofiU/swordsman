# 游戏时间
module WordsGameEngine
  class GameTime < Time
    attr_accessor :year, :month, :day

    def initialize(year, month, day)
      @year = year
      @month = month
      @day = day
    end

    def self.regin_title
      @@regin_title
    end

    def self.regin_title=(regin_title)
      @@regin_title = regin_title
    end

  end
end