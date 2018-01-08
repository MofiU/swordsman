module Client
  module View
    module Application
      module Menu
        def self.render
          font_helper = Helper::FontHelper.new
          row_format = %Q(%20s %20s %20s %20s %20s %20s)
          puts font_helper.important_label(row_format%['个人中心(A)', '背包(B)', '门派(C)', '任务(D)', '关于(E)', '退出(Q)'])
        end
      end
    end
  end
end
