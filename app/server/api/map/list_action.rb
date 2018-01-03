module Server
  module API
    module Map
      class ListAction
        def self.call
          { return_code:0, return_info: Server::Map.all }
        end
      end
    end
  end
end