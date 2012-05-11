class User < ActiveRecord::Base
  belongs_to :school
  
  attr_accessible :email, :name, :role, :school_id
  
  validates :email, :name, :role, :school_id,
            presence: true
  
end
