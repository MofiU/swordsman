module Swordsman
  class DbSeed < Thor::Group
    include Thor::Actions

    desc 'prepared some data'
    def create_races
      Race.find_or_create_by!( name: '人类', base_mana: 200, base_health_point: 500, base_speed: 50, base_damage: 100, base_defense: 50,
                               mana_increment: 100, health_point_increment: 200, speed_increment: 20, damage_increment: 50, defense_increment: 20)
      Race.find_or_create_by!( name: '石头人', base_mana: 200, base_health_point: 500, base_speed: 50, base_damage: 100, base_defense: 50,
                               mana_increment: 100, health_point_increment: 200, speed_increment: 20, damage_increment: 50, defense_increment: 20)
    end

    def create_lives
      shitouren = Race.find_by_name('石头人')
      5.times{ |i| Life.find_or_create_by!(name: "石头人喽啰#{i}", age: 50, race: shitouren) }

    end

    def create_groups
      Group.find_or_create_by!(name: '御姐联盟', principle: '拯救世界御姐')
      Group.find_or_create_by!(name: '萝莉联盟', principle: '维护萝莉自由')
    end

    def create_weapon
      Weapon.find_or_create_by!(name: 'SKS狙击步枪', damage: '5000')
      Weapon.find_or_create_by!(name: 'M416突击步枪', damage: '4000')
      Weapon.find_or_create_by!(name: '98k狙击步枪', damage: '10000')
    end

  end
end

