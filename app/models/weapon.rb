#武器
class Weapon < ActiveRecord::Base
  validates_presence_of :name, :damage
  validates_uniqueness_of :name

  def initialize(name, damage)
    @name = name
    @damage = damage
  end
end