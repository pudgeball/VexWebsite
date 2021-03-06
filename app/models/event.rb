class Event < ActiveRecord::Base
  attr_accessible :name, :region_id, :spotsAvailable, :time, :location

  validates :name, uniqueness: true
  
  validates :spotsAvailable, :region, :name, :time, :location,
            presence: true
            
  validates :spotsAvailable, 
            numericality: { only_integer: true,
                            greater_than: 0,
                            less_than_or_equal_to: 36 }

  belongs_to :region
  
  has_many :eventRecords
  has_many :event_attendees
  
end
