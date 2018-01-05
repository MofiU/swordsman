module Swordsman
  class DbMigration < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'create migration file'
    def create_migration_file
      template "migration", "#{ROOT_PATH}/app/server/db/migrations/#{Time.now.strftime("%Y%m%d%H%M%S")}_#{name}.rb"
    end
  end
end

