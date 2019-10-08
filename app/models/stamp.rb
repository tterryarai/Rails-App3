class Stamp < ApplicationRecord

# constant

# also see ja.yml for each setting

STATUSES = [0,1,2]
# 0:未定
# 1:予定
# 2:購入済

GROUP1 = [0,1,2,3,4,5,6,7,8,9,10,999]
# 0:（なし）
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

GROUP2 = [0,1,2,3,4,5,6,999]
# 0:（なし）
# 1:普通切手/definitives
# 2:記念切手/commemorative
# 3:年賀切手
# 4:切手趣味週間
# 5:国際文通週間
# 6:国立公園
# 999:その他（remark2に記入）

GROUP3 = [0,999]
# 0:（なし）
# 999:その他（remark3に記入）

end
