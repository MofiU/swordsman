# 生灵
class Life < ActiveRecord::Base
  belongs_to :race
  has_many :skills
  has_one :armor
  has_one :weapon
  has_one :shoe
  has_many :props
  belongs_to :group
  validates_presence_of :name, :age, :sex, :current_mana, :current_health_point,
                        :total_mana, :total_healthy_point, :damage, :defense, :speed,
                        :level, :total_exp, :current_exp, :delete_at, :delete_by
  validates_inclusion_of :sex, in: %w( male famale none )

  def fight(enemys)
    FightRenderer.processing(self, enemys)
  end

end