class EventAttendees < ActiveRecord::Base
  belongs_to :team
  belongs_to :event
  # attr_accessible :title, :body
end
