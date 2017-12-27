# 门派组织
class Group < ActiveRecord::Base
  validates_presence_of :name, :principle
  validates_uniqueness_of :name

  has_many :lives
end

