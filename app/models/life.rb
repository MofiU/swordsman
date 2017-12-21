# 生灵
class Life < ActiveRecord::Base
  belongs_to :race
  belongs_to :group
  has_many :skills
  validates_presence_of :name, :age, :sex, :base_hp, :base_mp, :base_damage, :base_defense,
                        :total_damage, :total_defense, :total_hp, :total_mp
  validates_inclusion_of :alive, in: [true, false]
  validates_inclusion_of :sex, in: %w( male famale none )
end