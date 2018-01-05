module Server
  module API
    module Player
      extend ActiveSupport::Autoload

      autoload :ShowAction
      autoload :CreateAction
    end
  end
end