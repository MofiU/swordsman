# 种族
class Race < ActiveRecord::Base
  validates_presence_of :name, :base_mana, :base_health_point, :base_speed, :base_damage, :base_defense,
                        :mana_increment, :health_point_increment, :speed_increment, :damage_increment, :defense_increment
  validates_uniqueness_of :name

  has_many :lives
end