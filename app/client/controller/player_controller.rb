# 理论上应设计为观察者模式，单例执行 TOFIX
module Client
  module Controller
    class PlayerController
      def show(player_id)
        player = get(player_id)
        View::Player::Show.render(player)
      end

      def new
        races = Server::API::Race::ListAction.call
        params = View::Player::New.render races
        create(params)
      end

      def create(params)
        Application.instance.current_player = Server::API::Player::CreateAction.call(params)
        View::Player::Create.render
      end

      def get(player_id)
        Server::API::Player::ShowAction.call(player_id)
      end
    end
  end
end
