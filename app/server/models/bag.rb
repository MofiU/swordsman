# 背包
module Server
  class Bag < ActiveRecord::Base
    has_many :bag_items
    belongs_to :life, required: true
  end
end