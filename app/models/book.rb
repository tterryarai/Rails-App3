class Book < ApplicationRecord

# constant

# see ja.yml for each setting

STATUSES = [0,1,2,3,4]

GROUP1 = [0,1,2,3,4,5,999]

GROUP2 = [0,999]

GROUP3 = [0,999]

PROVIDERS = [0,999]

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

def self.provider_list
  PROVIDERS
end

end
