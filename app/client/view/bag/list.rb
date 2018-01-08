module Client
  module View
    module Bag
      class List

        def self.render
          row_format = %Q(%20s %40s  %50s)
          font_helper = Helper::FontHelper.new
          puts row_format%[font_helper.important_label('序号'), font_helper.important_label('名称'), font_helper.important_label('数量')]
          $current_player.bag.bag_items.each do |bag_item|
            puts row_format%[font_helper.info_label(bag_item.item.id.to_s), font_helper.info_label(bag_item.item.name), font_helper.success_label(bag_item.count.to_s)]
          end
        end
      end
    end
  end
end
