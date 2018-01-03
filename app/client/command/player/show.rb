module Client
  module Command
    module Player
      class Show
        def self.execute(player_id)
          Controller::PlayerController.new.show(player_id)
        end
      end
    end
  end
end