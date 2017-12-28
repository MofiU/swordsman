#技能
class Skill < ActiveRecord::Base
  belongs_to :group
  has_many :life_skills

  validates_presence_of :name, :damage, :limit_level
  validates_uniqueness_of :name
  validates_inclusion_of :type, in: %w(group private)
end