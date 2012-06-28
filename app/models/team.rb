class Team < ActiveRecord::Base
  attr_accessible :name, :numStudents, :school_id
  
  validates :name, :numStudents, :school_id,
            presence: true
  
  validates :numStudents,
            numericality: { integer_only: 0, greater_than: 0 }
  
  belongs_to :school
  has_many :eventRecords
  has_many :event_attendees
end
