module Client
  module View
    module Player
      class Menu
        def self.render
          font_helper = Helper::FontHelper.new
          puts font_helper.title_label("属性展示(AA)")
        end
      end
    end
  end
end
