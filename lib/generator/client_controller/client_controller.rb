module Swordsman
  class ClientController < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'create a controller'
    def create
      template "controller", "app/client/controller/#{name.singularize}_controller.rb"
    end
  end
end

