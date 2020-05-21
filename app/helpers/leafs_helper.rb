module LeafsHelper

def leaf_status_list
  list = []
  Leaf.status_list.each do |e|
    list << [t("leaf.status.elem" + e.to_s),e]
  end
  return list
end


def leaf_group1_list
  list = []
  Leaf.group1_list.each do |e|
    list << [t("leaf.group1.elem" + e.to_s),e]
  end
  return list
end


def leaf_fix_group1(leaf)
  t('leaf.group1.elem' + leaf.group1.to_s)
end


def marshal_stamps(leaf)
   stamps = Stamp.select('id, name, price, status, image_path, remark1').where(['leaf_id = ?', leaf.id]).order(:remark1)
#   stamps = Stamp.select('id, name, price, status, image_path, remark1').where(['leaf_id = ?', leaf.id])
end


def debug(action,message)
  p 'Debug:' + 'LeafView' + ':' + action + ':' + message
end

end
