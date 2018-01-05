module Server
  module API
    module Player
      class ShowAction
        def self.call(player_id)
          Server::Life.find player_id
        end
      end
    end
  end
end