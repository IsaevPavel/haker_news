class  Vote < ActiveRecord::Base
  attr_accessible :user_id, :value
  has_many :links
end