class Leaf < ApplicationRecord
  has_many :stamps

# constant

# also see ja.yml for each setting

STATUSES = [1,5]
# 1:未完成（未所持・使用済含む）
# 2:（未使用）
# 3:（未使用）
# 4:（未使用）
# 5:完成

GROUP1 = [1,2,3,4,5,6,7,8,9,10]
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
# 999:その他（未使用）

GROUP2 = [999]
# 999:（未使用）

GROUP3 = [999]
# 999:（未使用）

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
