# 战斗渲染器
class FightRenderer

  def self.processing(current_player, enemys)
    # 生成主角战斗画面，判断战斗最终结果
    # 调用ExpCalculator
    enemys.each do |enemy|
      p "#{current_player.name}跳起来打到了 #{enemy.name}的膝盖， #{enemy.name}不堪受辱，自杀身亡， 恭喜#{current_player.name} 赢得了战斗"
    end
  end

end