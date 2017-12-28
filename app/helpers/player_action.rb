module PlayerAction

  def fight(enemys)
    FightRenderer.processing(self, enemys)
  end

  def join_group(group_id)
    group = Group.find group_id
    if GroupLife.exists?(life: self, group: group)
      # 如果换门派，应该额外处理，待完成
      p '已加入门派，不能重复加入'
    else
      GroupLife.create!(life: self, group: group, title: '入门弟子')
    end
  end

  def current_group_live
    group_lives.last
  end

  def current_group
    current_group_live.group
  end

  def group_title

  end

  def history_groups
    group_lives.map(&:group)
  end

  def display
    p "姓名: #{name}"
    p "门派：#{current_group.try(:name)}"
    p "门派称谓: #{current_group_live.try(:title)}"
  end

end