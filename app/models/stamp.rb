class Stamp < ApplicationRecord

# constant

# also see ja.yml for each setting

STATUSES = [0,1,2]
# 0:����
# 1:�\��
# 2:�w����

GROUP1 = [0,1,2,3,4,5,6,7,8,9,10,999]
# 0:�i�Ȃ��j
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
# 999:���̑��iremark1�ɋL���j

GROUP2 = [0,1,2,3,4,5,6,999]
# 0:�i�Ȃ��j
# 1:���ʐ؎�/definitives
# 2:�L�O�؎�/commemorative
# 3:�N��؎�
# 4:�؎��T��
# 5:���ە��ʏT��
# 6:��������
# 999:���̑��iremark2�ɋL���j

GROUP3 = [0,999]
# 0:�i�Ȃ��j
# 999:���̑��iremark3�ɋL���j

end
