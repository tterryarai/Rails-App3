class ModelStock < ApplicationRecord

# constant

# see ja.yml for each setting

STATUSES = [0,1,2,3,4]

GROUP1 = [0,1,2,3,4,999]

GROUP2 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,999]

GROUP3 = [0,1,2,3,4,5,6,7,8,9,10,11,12,999]

SCALES = [0,1,2,3,4,5,6,7,999]

PROVIDERS = [0,1,2,3,4,5,6,999]

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

def self.scale_list
  SCALES
end

def self.provider_list
  PROVIDERS
end

end
