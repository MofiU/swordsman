# 门派日志
class GroupLog < ActiveRecord::Base
  belongs_to :group, required: true
  validates_presence_of :description
  validates_inclusion_of :type, in: %w(found ruin member_increase member_reduce change_principle task)
end

