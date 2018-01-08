module Swordsman
  class ClientView < Thor::Group
    include Thor::Actions
    argument :folder_name
    argument :action_name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'quick create a view file'
    def create
      template "view", "app/client/view/#{folder_name}/#{action_name}.rb"
    end
  end
end

