module Client
  module Command
    module Player
      class Show
        def self.execute
          Controller::PlayerController.new.show(Application.instance.current_player.id)
        end
      end
    end
  end
end