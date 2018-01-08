# 战斗日志
module Server
  class KillLog < ActiveRecord::Base
    belongs_to :life, required: true
    has_many :growing_logs

    validates_presence_of :description

  end
end
