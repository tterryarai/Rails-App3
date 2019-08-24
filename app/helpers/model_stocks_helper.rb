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

end
