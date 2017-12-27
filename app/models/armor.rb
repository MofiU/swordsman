# 防具
class Armor < ActiveRecord::Base
  validates_presence_of :name, :defence, :enabled
  validates_uniqueness_of :name

  def initialize(name, defence)
    @name = name
    @defence = defence
  end
end