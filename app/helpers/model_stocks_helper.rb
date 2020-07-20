module ModelStocksHelper


def model_stock_status_list
  list = []
  ModelStock.status_list.each do |e|
    list << [t("model_stock.status.elem" + e.to_s),e]
  end
  return list
end


def model_stock_group1_list
  list = []
  ModelStock.group1_list.each do |e|
    list << [t("model_stock.group1.elem" + e.to_s),e]
  end
  return list
end


def model_stock_group2_list
  list = []
  ModelStock.group2_list.each do |e|
    list << [t("model_stock.group2.elem" + e.to_s),e]
  end
  return list
end


def model_stock_group3_list
  list = []
  ModelStock.group3_list.each do |e|
    list << [t("model_stock.group3.elem" + e.to_s),e]
  end
  return list
end


def model_stock_scale_list
  list = []
  ModelStock.scale_list.each do |e|
    list << [t("model_stock.scale.elem" + e.to_s), e]
  end
  return list
end


def model_stock_provider_list
  list = []
  ModelStock.provider_list.each do |e|
    list << [t("model_stock.provider.elem" + e.to_s),e]
  end
  return list
end


def debug(action,message)
  p 'Debug:' + 'ModelStockView' + ':' + action + ':' + message
end


def model_stock_fix_group1(ms)
  if ms.remark1.present?
    ms.remark1
  else
    t('model_stock.group1.elem' + ms.group1.to_s)
  end
end

def model_stock_fix_group2(ms)
  if ms.remark2.present?
    ms.remark2
  else
    t('model_stock.group2.elem' + ms.group2.to_s)
  end
end

def model_stock_fix_group3(ms)
  if ms.remark3.present?
    ms.remark3
  else
    t('model_stock.group3.elem' + ms.group3.to_s)
  end
end

def model_stock_fix_scale(ms)
  if ms.scale == 999 && ms.remark4.present?
    ms.remark4
  else
    t('model_stock.scale.elem' + ms.scale.to_s)
  end
end

def model_stock_fix_provider(ms)
  if ms.provider == 999 && ms.remark5.present?
    ms.remark5
  else
    t('model_stock.provider.elem' + ms.provider.to_s)
  end
end

end
