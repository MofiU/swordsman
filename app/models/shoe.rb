#武器
class Shoe < ActiveRecord::Base
  validates_presence_of :name, :speed
  validates_uniqueness_of :name
end