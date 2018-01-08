# 道具
module Server
  class Item < ActiveRecord::Base
    has_many :bag_items
    validates_uniqueness_of :name, :description
    validates_inclusion_of :category, in: %w(armor weapon shoe consumable)
  end
end