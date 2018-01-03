# 背包
module Server
  class Bag < ActiveRecord::Base
    include BagAction
    has_many :items
    belongs_to :life, required: true
  end
end