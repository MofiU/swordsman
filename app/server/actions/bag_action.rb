module Server
  module BagAction
    def pick_up(element, count = 1)
      bag_item = items.find_by(ref_class: element.class.to_s, ref_id: element.id)

      if items.present?
        bag_item.update!(count: bag_item.count + count)
        p "拾取成功！ 原有数量加 #{count}"
      else
        if items.length < kind_size
          items.create(ref_class: element.class.to_s, ref_id: element.id, count: count)
          p '拾取成功！新增物品！'
        else
          p '背包已满, 拾取失败!'
        end
      end
      save!
    end

    def drown_down(element, count = 1)
      bag_item = items.find_by(ref_class: element.class.to_s, ref_id: element.id)
      return p '丢雷楼某,某的丢' if bag_item.nil?
      if bag_item.count <= count
        bag_item.destroy
      else
        bag_item.update!(count: bag_item.count - count)
      end
      save!
      p "丢弃成功"
    end

    def effect(item_id)

    end

  end
end