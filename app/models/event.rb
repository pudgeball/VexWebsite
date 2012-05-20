class Event < ActiveRecord::Base
  attr_accessible :date, :name, :region, :spotsAvailable
  
  validates :spotsAvailable, :region, :date, :name,
            presence: true
            
  validates :spotsAvailable, 
            numericality: { only_integer: true,
                            greater_than: 0,
                            less_than_or_equal_to: 36 }
  
  has_many :eventRecords
  has_many :event_attendees
  
  def spotsLeft
    return spotsAvailable - event_attendees.length
  end
end
