
require File.expand_path('../app/client/application', __FILE__)


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
    Client::Application.instance.run
  end
end

namespace :client do
  desc 'create controller file'
  task :controller, :name do |t, args|
    Swordsman::ClientController.start([args.name])
  end

  desc 'create view file'
  task :view, [:folder_name, :action_name] do |t, args|
    Swordsman::ClientView.start([args.folder_name, args.action_name])
  end

end

namespace :generator do
  desc "create generator task"
  task :create, :name do |t, args|
    Swordsman::Initalizer.start([args.name])
  end
end

namespace :api do
  desc "quick create api template, Notice: please use rake 'api:create'"
  task :create, [:folder_name, :action_name] do |t, args|
    Swordsman::ApiCreate.start([args.folder_name, args.action_name])
  end
end

desc "test"
task :test do
  # p Server::API::Player::ShowAction.call(1)
  # p Server::API::Map::ListAction.call
  # Client::Command::Player::Show.execute
  Client::Helper::PromoteHelper.new.ask("s?")
end
