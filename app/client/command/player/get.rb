module Client
  module Command
    module Player
      class Get
        def self.execute(player_id)
          Controller::PlayerController.new.get(player_id)
        end
      end
    end
  end
end