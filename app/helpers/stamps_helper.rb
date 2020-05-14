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
  t('stamp.group1.elem' + stamp.group1.to_s)
end

def stamp_fix_group2(stamp)
  t('stamp.group2.elem' + stamp.group2.to_s)
end

def stamp_fix_group3(stamp)
  if stamp.group3 == 999 && stamp.remark3.present?
    stamp.remark3
  else
    t('stamp.group3.elem' + stamp.group3.to_s)
  end
end

end
