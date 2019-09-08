module BooksHelper

def book_status_list
  list = []
  Book.status_list.each do |e|
    list << [t("book.status.elem" + e.to_s),e]
  end
  return list
end


def book_group1_list
  list = []
  Book.group1_list.each do |e|
    list << [t("book.group1.elem" + e.to_s),e]
  end
  return list
end


def book_group2_list
  list = []
  Book.group2_list.each do |e|
    list << [t("book.group2.elem" + e.to_s),e]
  end
  return list
end


def book_group3_list
  list = []
  Book.group3_list.each do |e|
    list << [t("book.group3.elem" + e.to_s),e]
  end
  return list
end

def book_provider_list
  list = []
  Book.provider_list.each do |e|
    list << [t("book.provider.elem" + e.to_s),e]
  end
  return list
end

def debug(action,message)
  p 'Debug:' + 'BookView' + ':' + action + ':' + message
end

def fix_group1(book)
  if book.group1 == 999 && book.remark1.present?
    book.remark1
  else
    t('book.group1.elem' + book.group1.to_s)
  end
end

def fix_group2(book)
  if book.group2 == 999 && book.remark2.present?
    book.remark2
  else
    t('book.group2.elem' + book.group2.to_s)
  end
end

def fix_group3(book)
  if book.group3 == 999 && book.remark3.present?
    book.remark3
  else
    t('book.group3.elem' + book.group3.to_s)
  end
end

end
