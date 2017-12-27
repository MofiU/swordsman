# 门派组织 - 角色
class GroupLife < ActiveRecord::Base
  belongs_to :group
  belongs_to :life

  validates_presence_of :delete_by, :delete_at
end

