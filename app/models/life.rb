# 生灵
class Life < ActiveRecord::Base
  include PlayerAction
  belongs_to :race, required: true
  has_many :skills
  has_one :armor
  has_one :weapon
  has_one :shoe
  has_many :props
  has_many :group_lives

  validates_presence_of :name, :age, :sex
  validates_inclusion_of :sex, in: %w( male famale none )
  before_save :init_base_attributes

  private

  def init_base_attributes
    self.total_mana = self.race.base_mana if self.total_mana.nil?
    self.current_mana = self.total_mana

    self.total_health_point = self.race.base_health_point if self.total_health_point.nil?
    self.current_health_point = self.total_health_point

    self.damage = self.race.base_damage if self.damage.nil?
    self.defense = self.race.base_defense if self.defense.nil?
    self.speed = self.race.base_speed if self.speed.nil?
  end

end