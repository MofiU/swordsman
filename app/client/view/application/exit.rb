module Client
  module View
    module Application
      module Exit
        def self.render
          font_helper = Helper::FontHelper.new
          puts font_helper.warning_label('祝您游戏愉快，欢迎下次回来。')
          Process.exit
        end
      end
    end
  end
end
