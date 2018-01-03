module Server
  module API
    module Player
      class ShowAction
        def self.call(player_id)
          player = Server::Life.find player_id
          { return_code:0, return_info: player }
        end
      end
    end
  end
end