module Swordsman
  class DbSeed < Thor::Group
    include Thor::Actions

    desc 'prepared some data'
    def create_races
      Server::Race.find_or_create_by!( name: '人类', base_mana: 200, base_health_point: 500, base_speed: 50, base_damage: 100, base_defense: 50,
                               mana_increment: 100, health_point_increment: 200, speed_increment: 20, damage_increment: 50, defense_increment: 20)
      Server::Race.find_or_create_by!( name: '石头人', base_mana: 200, base_health_point: 500, base_speed: 50, base_damage: 100, base_defense: 50,
                               mana_increment: 100, health_point_increment: 200, speed_increment: 20, damage_increment: 50, defense_increment: 20)
    end

    def create_lives
      shitouren = Server::Race.find_by_name('石头人')
      5.times{ |i| Server::Life.find_or_create_by!(name: "石头人喽啰#{i}", age: 50, race: shitouren) }

    end

    def create_groups
      Server::Group.find_or_create_by!(name: '御姐联盟', principle: '拯救世界御姐')
      Server::Group.find_or_create_by!(name: '萝莉联盟', principle: '维护萝莉自由')
    end

    def create_weapons
      Server::Weapon.find_or_create_by!(name: 'SKS狙击步枪', damage: '5000')
      Server::Weapon.find_or_create_by!(name: 'M416突击步枪', damage: '4000')
      Server::Weapon.find_or_create_by!(name: '98k狙击步枪', damage: '10000')
    end

    def create_maps
      Server::Map.find_or_create_by!(name: '小渔村')
      Server::Map.find_or_create_by!(name: 'Y城', level: 5)
      Server::Map.find_or_create_by!(name: 'P港', level: 8)
      Server::Map.find_or_create_by!(name: '机场', level: 10 )
    end

    def finished
      p 'Success rake seed file'
    end

  end
end

