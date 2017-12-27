# 战斗日志
class KillLog < ActiveRecord::Base
  belongs_to :life
  has_many :growing_logs

  validates_presence_of :description

end

