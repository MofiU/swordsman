# 理论上应设计为观察者模式，单例执行 TOFIX
module Client
  module Controller
    class PlayerController
      def show(player_id)
        player = Server::API::Player::ShowAction.call(player_id)
        View::Player::Show.render(player)
      end

      def new
        races = Server::API::Race::ListAction.call
        params = View::Player::New.render races
        p '------------------'
        p params
        # create(params)
      end

      def create(params)
        Application.instance.current_player = Server::API::Player::CreateAction.call(params)
        View::Player::Create.render(result)
      end
    end
  end
end