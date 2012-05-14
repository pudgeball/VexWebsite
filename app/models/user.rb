class User < ActiveRecord::Base
  belongs_to :school
  
  attr_accessible :email, :name, :role, :school_id, :password
  
  validates :email, :name, :role, :school_id, :password,
            presence: true
  
end
