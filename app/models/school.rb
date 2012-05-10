class School < ActiveRecord::Base
  attr_accessible :name, :region
  
  has_many :teams
  has_many :users
end
