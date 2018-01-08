module Client
  module Controller
    class ApplicationController < BaseController
      # 如何实现自动render对应的view是个问题
      def menu
        # View::Application::Menu.render
        render
      end

    end
  end
end