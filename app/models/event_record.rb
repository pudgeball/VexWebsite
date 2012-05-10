class EventRecord < ActiveRecord::Base
  belongs_to :event
  belongs_to :team
  attr_accessible :loss, :tie, :win
end
