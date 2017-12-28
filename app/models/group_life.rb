# 门派组织 - 角色
class GroupLife < ActiveRecord::Base
  belongs_to :group, required: true
  belongs_to :life, required: true

end

