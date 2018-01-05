module Client
  module View
    module Player
      class Create
        def self.render
          font_helper = Helper::FontHelper.new
          puts font_helper.success_label('建立角色成功!')
        end
      end
    end
  end
end
