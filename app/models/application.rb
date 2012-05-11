class Application < ActiveRecord::Base
  attr_accessible :schoolName, :teamName, :userEmail, :userName
  
  validates :schoolName, :teamName, :userEmail, :userName,
            presence: true;
  
end
