class EventAttendees < ActiveRecord::Base
  belongs_to :team
  belongs_to :event
  
  attr_accessible :team_id, :event_id
  
  validates :team_id, :event_id, presence: true
end
