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

def stamp_fix_group3(stamp)
  if stamp.group3 == 999 && stamp.remark3.present?
    stamp.remark3
  else
    t('stamp.group3.elem' + stamp.group3.to_s)
  end
end

def stamp_image(s)
  image_path = Stamp.image_path_base + s.image_path
  if s.image_path.empty? then
     Stamp.no_image_path
  elsif s.status == Stamp.status_list[1] or s.status == Stamp.status_list[2] then
    if File.exist?(image_path) then
      image_path
    else
      Stamp.no_image
    end
  elsif s.status == Stamp.status_list[0] then
      Stamp.not_purchase
  else
      Stamp.error_state
  end
end

def debug(action,message)
  p 'Debug:' + 'StampView' + ':' + action + ':' + message
end

end
