module Swordsman
  class DbMigrate < Thor::Group
    include Thor::Actions

    desc 'run migrate'
    def run_migration_file
      Dir["app/server/db/migrations/*.rb"].sort.each do |file|
        basename = File.basename(file)
        klass = basename.remove(basename[0..basename.index('_')]).remove('.rb').classify.constantize
        klass.migrate :up
      end
    end
  end
end

