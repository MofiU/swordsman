# 门派组织 - 角色
class GroupLife < ActiveRecord::Base
  belongs_to :group, required: true
  belongs_to :life, required: true

  validates_presence_of :rank, :credit
  validates_inclusion_of :rank, in: (1..1000)

end

