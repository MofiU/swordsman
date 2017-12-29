require File.expand_path('../config/application', __FILE__)

namespace :db do
  desc 'create migration file'
  task :migration, :name do |t, args|
    Swordsman::DbMigration.start([args.name])
  end

  desc 'Init database'
  task :create do
    Swordsman::DbCreate.start
  end

  desc 'run migrations'
  task :migrate do
    Swordsman::DbMigrate.start
  end

  desc 'rollback database'
  task :rollback do
    Swordsman::DbRollback.start
  end

  desc 'create seed file to quick start'
  task :seed do
    Swordsman::DbSeed.start
  end
end

namespace :game do
  desc 'Start Game'
  task :start do
    Swordsman::Application.instance.start_game
  end
end

namespace :generator do
  desc "create generator task"
  task :create, :name do |t, args|
    Swordsman::Initalizer.start([args.name])
  end
end

desc "test"
task :test do

  gun = Weapon.first
  group1 = Group.first
  group2 = Group.last
  enemys = Race.last.lives
  liang = Life.find_or_create_by!(name: '王亮', age: 18, race: Race.first)
  # liang.bag.list
  liang.bag.pick_up(gun)
  # liang.fight(enemys)
  # liang.bag.drown_down(gun)
  liang.bag.reload
  liang.bag.list
end
