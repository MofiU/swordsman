module Swordsman
  class DbRollback < Thor::Group
    include Thor::Actions

    desc 'rollback all tables'
    def rollback
      Dir["#{ROOT_PATH}/app/server/db/migrations/*.rb"].sort.reverse_each do |file|
        basename = File.basename(file)
        klass = basename.remove(basename[0..basename.index('_')]).remove('.rb').classify.constantize
        klass.migrate :down
      end
    end
  end
end

