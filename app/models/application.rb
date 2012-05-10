class Application < ActiveRecord::Base
  attr_accessible :schoolName, :teamName, :userEmail, :userName
end
