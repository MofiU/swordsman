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
  # race1 = Race.create!( name: '人类', base_mana: 200, base_health_point: 500, base_speed: 50, base_damage: 100, base_defense: 50,
  #                     mana_increment: 100, health_point_increment: 200, speed_increment: 20, damage_increment: 50, defense_increment: 20)
  # race2 = Race.create!( name: '石头人', base_mana: 200, base_health_point: 500, base_speed: 50, base_damage: 100, base_defense: 50,
  #                       mana_increment: 100, health_point_increment: 200, speed_increment: 20, damage_increment: 50, defense_increment: 20)
  # life1 = Life.create!(name: '王亮', age: 18, race: race1)
  # life2 = Life.create!(name: '石头人喽啰', age: 18, race: race2)
  # life1.fight([life2])
  life1 = Life.first
  life2 = Life.last
  life1.fight([life2])

  # group = Group.create!(name: '正义联盟', principle: '维护世界和平')

  group = Group.first
  life1.join_group(group.id)
  life2.join_group(group.id)

  life1.display
  p '=========='
  life2.display

  p '---------------------'

  group.list

end
