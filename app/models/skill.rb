#技能
class Skill < ActiveRecord::Base
  validates_presence_of :name, :damage
  validates_uniqueness_of :name
end