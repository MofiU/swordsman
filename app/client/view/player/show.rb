module Client
  module View
    module Player
      class Show
        def self.render
          font_helper = Helper::FontHelper.new
          row_format = %Q(%s: %s)
          puts row_format%[font_helper.title_label('姓名'), font_helper.value_label($current_player.name)]
          puts row_format%[font_helper.title_label('种族'), font_helper.value_label($current_player.race.name)]
          puts row_format%[font_helper.title_label('等级'), font_helper.value_label($current_player.level.to_s)]
        end
      end
    end
  end
end
