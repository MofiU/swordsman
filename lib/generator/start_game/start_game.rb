module Swordsman
  class StartGame < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'write your desc here'
    def create
      #template "", ""
    end
  end
end

