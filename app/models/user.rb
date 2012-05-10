class User < ActiveRecord::Base
  belongs_to :school
  attr_accessible :email, :name, :role
end
