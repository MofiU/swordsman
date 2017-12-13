require File.expand_path('../config/boot', __FILE__)
namespace :db do
  desc "create migration file"
  task :migration, :name do |t, args|
    Swordsman::DbMigration.start([args.name])
  end

  desc "Init database"
  task :create do
    Swordsman::DbCreate.start
  end

  desc "run migrations"
  task :migrate do
    Swordsman::DbMigrate.start
  end

  desc 'rollback database'
  task :rollback do
    Swordsman::DbRollback.start
  end
end

namespace :generator do
  desc "create generator task"
  task :create, :name do |t, args|
    Swordsman::Initalizer.start([args.name])
  end
end


