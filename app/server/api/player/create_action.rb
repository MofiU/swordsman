module Server
  module API
    module Player
      class CreateAction
        def self.call(params)
          Server::Life.create params
        end
      end
    end
  end
end