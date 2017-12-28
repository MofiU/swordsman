module GroupAction

  def list
    p "门派名： #{name}"
    group_lives.try(:sort_by, &:rank).try(:each) do |group_life|
      p "称谓： #{group_life.title}    姓名：#{group_life.life.name}"
    end
  end

end