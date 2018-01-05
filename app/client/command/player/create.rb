module Client
  module Command
    module Player
      class Create
        def self.execute
          Controller::PlayerController.new.new
        end
      end
    end
  end
end