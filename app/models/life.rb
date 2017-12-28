# 生灵
class Life < ActiveRecord::Base
  belongs_to :race, required: true
  has_many :skills
  has_one :armor
  has_one :weapon
  has_one :shoe
  has_many :props
  has_many :group_lives
  validates_presence_of :name, :age, :sex, :current_mana, :current_health_point,
                        :total_mana, :total_healthy_point, :damage, :defense, :speed,
                        :level, :total_exp, :current_exp
  validates_inclusion_of :sex, in: %w( male famale none )

  def fight(enemys)
    FightRenderer.processing(self, enemys)
  end

end