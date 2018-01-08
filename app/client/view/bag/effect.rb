module Client
  module View
    module Bag
      class Effect

        def self.render
          promote_helper = Helper::PromoteHelper.new
          item_id = loop do
            item_id = promote_helper.ask '请选择要使用的物品序号:'
            confirm = promote_helper.yes? "确认?(y/yes)"
            if confirm
              break item_id
            else
              return
            end
          end
          puts '假装使用了'
          # 将逻辑放在view层理论上是不合理的。。解决方法未知
        end


      end
    end
  end
end
