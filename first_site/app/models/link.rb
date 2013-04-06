class Link < ActiveRecord::Base
  attr_accessible :name, :description
  validates :name, :description, :presence => true
  belongs_to :vote
end
