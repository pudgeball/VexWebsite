class EventRecord < ActiveRecord::Base
  belongs_to :event
  belongs_to :team
  
  attr_accessible :loss, :tie, :win, :event_id, :team_id
  
  validates :loss, :tie, :win,
            numericality: { integer_only: true, 
                            greater_than_or_equal_to: 0 }
  
end
