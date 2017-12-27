#武器
class Weapon < ActiveRecord::Base
  validates_presence_of :name, :speed
  validates_uniqueness_of :name

  def initialize(name, speed)
    @name = name
    @speed = speed
  end
end