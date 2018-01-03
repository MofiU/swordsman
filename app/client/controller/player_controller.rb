# 理论上应设计为观察者模式，单例执行 TOFIX
module Client
  module Controller
    class PlayerController
      def show(player_id)
        result = Server::API::Player::ShowAction.call(player_id)
        View::Player::Show.render(result[:return_info])
      end
    end
  end
end