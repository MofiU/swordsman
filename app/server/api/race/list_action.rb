module Server
  module API
    module Race
      class ListAction
        def self.call
          Server::Race.all
        end
      end
    end
  end
end