# 成长日志(升级，经验获取等)
class GrowingLog < ActiveRecord::Base
  belongs_to :life, required: true
  belongs_to :kill_log_id, required: true #战斗编号

  validates_inclusion_of :type, in: %w(pick_up_prop drop_down_prop level_up die exp_increase exp_reduce join_group leave_group)
  validates_presence_of :description

end

