# 存储物
module Server
  class Item < ActiveRecord::Base
    belongs_to :bag
  end
end