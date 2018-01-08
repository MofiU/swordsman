# 理论上应设计为观察者模式，单例执行 TOFIX
module Client
  module Controller
    class PlayerController

      def show
        View::Player::Show.render(Application.instance.current_player)
      end

      def new
        races = Server::API::Race::ListAction.call
        params = View::Player::New.render races
        create(params)
      end

      def create(params)
        Application.instance.current_player = Server::API::Player::CreateAction.call(params)
        # 将玩家ID存入pid文件
        File.open('app/client/config/pid', 'w') { |file| file.write(Application.instance.current_player.id) }
        View::Player::Create.render
      end

      def get(player_id)
        Server::API::Player::ShowAction.call(player_id)
      end

      def menu
        View::Player::Menu.render
      end

    end
  end
end
