class Team < ActiveRecord::Base
  belongs_to :school
  
  attr_accessible :name, :numStudents, :school_id
  
  validates :name, :numStudents, :school_id,
            presence: true
  
  validates :numStudents,
            numericality: { integer_only: 0, greater_than_or_equal_to: 0 }
  
  has_many :eventRecords
  has_many :eventAttendees
end
