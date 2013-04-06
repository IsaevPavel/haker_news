class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone
  validates :name, :email, :phone, :presence => true
end
