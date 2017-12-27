module Swordsman
  class DbMigrate < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'run migrate'
    def run_migration_file
      Dir["#{ROOT_PATH}/db/migrations/*.rb"].each do |file|
        basename = File.basename(file)
        klass = basename.remove(basename[0..basename.index('_')]).remove('.rb').classify.constantize
        klass.new.up
      end
    end
  end
end

