# 门派组织
class Group < ActiveRecord::Base
  validates_presence_of :name, :princlple
  validates_uniqueness_of :name

  has_many :lives
  has_many :active_lives, ->{ where(delete_at: nil) }, class_name: 'Life'
  has_many :inactive_lives, ->{ where.not(delete_at: nil) }, class_name: 'Life'
end

