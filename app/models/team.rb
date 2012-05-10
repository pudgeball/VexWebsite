class Team < ActiveRecord::Base
  belongs_to :school
  attr_accessible :name, :numStudents
end
