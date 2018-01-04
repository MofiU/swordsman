module Client
  module View
    module Player
      class Show
        def self.render(player)
          font_helper = Helper::FontHelper.new
          row_format = %Q(%s: %s)
          puts row_format%[font_helper.title_label('姓名'), font_helper.primary_label(player.name)]
          puts row_format%[font_helper.title_label('种族'), font_helper.primary_label(player.race.name)]
          puts row_format%[font_helper.title_label('等级'), font_helper.primary_label(player.level.to_s)]
        end
      end
    end
  end
end
