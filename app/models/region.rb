class Region < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, uniqueness: true
  
  has_many :schools
  has_many :events
end
