module Client
  module View
    module Bag
      class Menu

        def self.render
          font_helper = Helper::FontHelper.new
          puts font_helper.title_label '道具列表(BA)'
          puts font_helper.title_label '使用道具(BB)'
        end

      end
    end
  end
end
