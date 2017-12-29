# 背包
class Bag < ActiveRecord::Base
  include BagAction
  has_many :bag_items
  belongs_to :life, required: true
end