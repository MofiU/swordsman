#武器
module Server
  class Weapon < ActiveRecord::Base
    validates_presence_of :name, :damage
    validates_uniqueness_of :name
  end
end