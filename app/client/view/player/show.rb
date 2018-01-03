module Client
  module View
    module Player
      class Show
        def self.render(player)
          p "姓名：#{player.name}"
          p "种族: #{player.race.name}"
          p "等级: #{player.level}"
        end
      end
    end
  end
end
