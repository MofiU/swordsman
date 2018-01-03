module Swordsman
  class ApiCreate < Thor::Group
    include Thor::Actions
    argument :folder_name
    argument :action_name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'quick create a api file'
    def create
      template "api_action", "app/server/api/#{folder_name}/#{action_name}_action.rb"
    end
  end
end

