module Client
  module Controller
    class ApplicationController < BaseController
      # 如何实现自动render对应的view是个问题
      def menu
        render
      end

      def exit
        render
      end

    end
  end
end