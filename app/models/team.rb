class Team < ActiveRecord::Base
  belongs_to :school
  attr_accessible :name, :numStudents
  
  has_many :eventRecords
  has_many :eventAttendees
end
