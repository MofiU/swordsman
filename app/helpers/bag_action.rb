module BagAction
  def pick_up(element, count = 1)
    bag_item = bag_items.find_by(ref_class: element.class.to_s, ref_id: element.id)

    if bag_item.present?
      bag_item.update!(count: bag_item.count + count)
      p "拾取成功！ 原有数量加 #{count}"
    else
      if bag_items.length < kind_size
        bag_items.create(ref_class: element.class.to_s, ref_id: element.id, count: count)
        p '拾取成功！新增物品！'
      else
        p '背包已满, 拾取失败!'
      end
    end
    save!
  end

  def drown_down(element, count = 1)
    bag_item = bag_items.find_by(ref_class: element.class.to_s, ref_id: element.id)
    return p '丢雷楼某' if bag_item.nil?
    if bag_item.count <= count
      bag_items.delete(bag_item)
    else
      bag_item.update!(count: bag_item.count - count)
    end
    save!
    p "丢弃成功,当前剩余： #{bag_item.try(:count)}"
  end

  def list
    bag_items.each do |item|
      object = item.ref_class.classify.constantize.find(item.ref_id)
      p "名字： #{object.name}"
      p "数量: #{item.count}"
      p '---------------------'
    end
  end

end