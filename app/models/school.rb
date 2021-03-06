class School < ActiveRecord::Base
  attr_accessible :name, :region_id, :city, :province, :country
  
  validates :name, uniqueness: true
  
  validates :name, :region,
              presence: true
  
  belongs_to :region
  
  has_many :teams
  has_many :users
end