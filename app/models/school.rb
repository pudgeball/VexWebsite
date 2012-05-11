class School < ActiveRecord::Base
  attr_accessible :name, :region
  
  validates :name, :region,
              presence: true
  
  has_many :teams
  has_many :users
end