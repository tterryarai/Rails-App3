module StampsHelper

def stamp_status_list
  list = []
  Stamp.status_list.each do |e|
    list << [t("stamp.status.elem" + e.to_s),e]
  end
  return list
end


def stamp_group1_list
  list = []
  Stamp.group1_list.each do |e|
    list << [t("stamp.group1.elem" + e.to_s),e]
  end
  return list
end


def stamp_group2_list
  list = []
  Stamp.group2_list.each do |e|
    list << [t("stamp.group2.elem" + e.to_s),e]
  end
  return list
end


def stamp_group3_list
  list = []
  Stamp.group3_list.each do |e|
    list << [t("stamp.group3.elem" + e.to_s),e]
  end
  return list
end

def debug(action,message)
  p 'Debug:' + 'StampView' + ':' + action + ':' + message
end

def stamp_fix_group1(stamp)
  if stamp.group1 == 999 && stamp.remark1.present?
    stamp.remark1
  else
    t('stamp.group1.elem' + stamp.group1.to_s)
  end
end

def stamp_fix_group2(stamp)
  if stamp.group2 == 999 && stamp.remark2.present?
    stamp.remark2
  else
    t('stamp.group2.elem' + stamp.group2.to_s)
  end
end

def stamp_fix_group3(stamp)
  if stamp.group3 == 999 && stamp.remark3.present?
    stamp.remark3
  else
    t('stamp.group3.elem' + stamp.group3.to_s)
  end
end

end
