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

GROUP1 = [1,2,3,4,5,6,7,8,9,10,999]
# 0:（なし）（未使用）
# 1:JP
# 2:Ryukyu
# 3:GB
# 4:England
# 5:Scotland
# 6:Wales
# 7:Northern Ireland
# 8:Isle of Man
# 9:Guernsey
# 10:Jersey
# 999:その他（remark1に記入）

GROUP2 = [1,2,3,4,5,6,999]
# 0:（なし）（未使用）
# 1:普通切手/definitives
# 2:記念切手/commemorative
# 3:年賀切手
# 4:切手趣味週間
# 5:国際文通週間
# 6:国立公園
# 7:Definitives
# 8:Commemoratives
# 9:Christmas
# 999:その他（remark2に記入）

GROUP3 = [999]
# 0:（なし）（未使用）
# 1:単片（未使用）
# 2:シート（未使用）
# 999:その他（remark3に記入）

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

end
