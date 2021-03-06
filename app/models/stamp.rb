class Stamp < ApplicationRecord
  belongs_to :leaf

# constant

# also see ja.yml for each setting

STATUSES = [1,4,5]
# 1:未購入
# 2:（未使用）
# 3:（未使用）
# 4:購入済（未使用品）
# 5:購入済（使用済品）

GROUP1 = [1,2,3,4,5,6,7,8,9,10]
# 0:（なし）（未使用）
# 1:JP(日本)
# 2:RY(琉球)
# 3:GB(イギリス)
# 4:EN(England)
# 5:SC(Scotland)
# 6:WL(Wales)
# 7:NI(Northern Ireland)
# 8:IOM(Isle of Man)
# 9:GS(Guernsey)
# 10:JS(Jersey)
# 999:その他（未使用）

GROUP2 = [1,2,3,4,5,6,7,8]
# 0:（なし）（未使用）
# 1:普通切手(Definitives)
# 2:記念切手(Commemoratives)
# 3:年賀切手()
# 4:切手趣味週間
# 5:国際文通週間
# 6:国立公園
# 7:ふるさと切手
# 8:クリスマス切手
# 999:その他（未使用）

GROUP3 = [999]
# 0:（なし）（未使用）
# 1:単片（未使用）
# 2:シート（未使用）
# 999:その他（remark3に記入）

# remark1:検索順序（リーフの表示順）に使用
# remark2（未使用）
# remark3:GROUP3のその他の場合に記載
# remark4:IDに使用
# remark5:サブ区分に使用

#画像関連
IMAGE_PATH_BASE = "stamps/"
NO_IMAGE = IMAGE_PATH_BASE + "no_image.png"
NOT_PURCHASE = IMAGE_PATH_BASE + "not_purchase.png"
ERROR_STATE = IMAGE_PATH_BASE + "error_state.png"
NO_IMAGE_PATH = IMAGE_PATH_BASE + "no_image_path.png"
IMAGE_WIDTH = "100"

def self.status_list
  STATUSES
end

def self.group1_list
  GROUP1
end

def self.group2_list
  GROUP2
end

def self.group3_list
  GROUP3
end

def self.image_path_base
  IMAGE_PATH_BASE
end

def self.no_image
  NO_IMAGE
end

def self.not_purchase
  NOT_PURCHASE
end

def self.error_state
  ERROR_STATE
end

def self.no_image_path
  NO_IMAGE_PATH
end

def self.image_width
  IMAGE_WIDTH
end


#Validation
validates :image_path, presence: true
validates :remark1,    presence: true
validates :leaf_id,    presence: true


end
