# 生灵
# 理论上应该还有一个player表 专门存储player信息
module Server
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

    delegate :pick_up, :drop_drown, to: :bag

    private

    def init_base_attributes
      # 赋值操作优于方法调用，所以必须加self
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
end