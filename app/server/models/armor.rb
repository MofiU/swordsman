# 防具
module Server
  class Armor < ActiveRecord::Base
    validates_presence_of :name, :defence, :enabled
    validates_uniqueness_of :name
  end
end