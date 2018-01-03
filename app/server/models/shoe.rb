#武器
module Server
  class Shoe < ActiveRecord::Base
    validates_presence_of :name, :speed
    validates_uniqueness_of :name
  end
end