class School < ActiveRecord::Base
  attr_accessible :name, :region_id
  
  validates :name, :region_id,
              presence: true
  
  belongs_to :region
  
  has_many :teams
  has_many :users
end