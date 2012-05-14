class EventAttendee < ActiveRecord::Base
  belongs_to :team
  belongs_to :event
  attr_accessible :event_id, :team_id
end
