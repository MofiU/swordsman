module Swordsman
  class DbRollback < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'write your desc here'
    def rollback
      Dir["#{ROOT_PATH}/db/migrations/*.rb"].reverse_each do |file|
        basename = File.basename(file)
        klass = basename[0...basename.rindex('_')].classify.constantize
        klass.new.down
      end
    end
  end
end

