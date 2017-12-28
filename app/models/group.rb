# 门派组织
class Group < ActiveRecord::Base
  include GroupAction
  validates_presence_of :name, :principle
  validates_uniqueness_of :name

  has_many :group_lives
  has_many :active_group_lives, ->{ where(delete_at: nil) }, class_name: 'GroupLife'
  has_many :inactive_group_lives, ->{ where.not(delete_at: nil) }, class_name: 'GroupLife'
  has_many :skills
end

