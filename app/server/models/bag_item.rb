# 背包
module Server
  class BagItem < ActiveRecord::Base
    belongs_to :item, required: true
    belongs_to :bag, required: true
  end
end