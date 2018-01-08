module Swordsman
  class Initalizer < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc ' create a task'
    def create_task_file
      template "template", "lib/generator/#{name}/#{name}.rb"
    end
  end
end

