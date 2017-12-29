# 生灵
class Life < ActiveRecord::Base
  include LifeAction
  belongs_to :race, required: true
  has_many :skills
  has_one :armor
  has_one :weapon
  has_one :shoe
  has_many :props
  has_many :group_lives
  has_one :bag

  validates_presence_of :name, :age, :sex
  validates_inclusion_of :sex, in: %w( male famale none )
  before_save :init_base_attributes

  private

  def init_base_attributes
    self.total_mana = race.base_mana   if total_mana.nil?
    self.total_health_point = race.base_health_point if total_health_point.nil?

    self.damage = race.base_damage if damage.nil?
    self.defense = race.base_defense if defense.nil?
    self.speed = race.base_speed if speed.nil?

    self.current_mana = total_mana if current_mana.nil?
    self.current_health_point = total_health_point if current_health_point.nil?

    self.bag = Bag.new
  end

end