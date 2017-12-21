# require File.expand_path('../config/boot', __FILE__)
require File.expand_path('../config/application', __FILE__)
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

namespace :game do
  desc "Start Game"
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
  # WordsGameEngine::AssetFactory.define do
  #   factory :general_group do
  #     leader '王亮'
  #     name '某个门派'
  #     principle '维护世界和平'
  #   end
  # end
  # WordsGameEngine::AssetFactory.create(:general_group)

  p Group.all
  # p WordsGameEngine::Asset::Group.all
end