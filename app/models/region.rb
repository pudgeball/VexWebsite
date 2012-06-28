class Region < ActiveRecord::Base
  attr_accessible :name
  
  has_many :schools
  has_many :events
end
