class Event < ActiveRecord::Base
  attr_accessible :date, :name, :region, :spotsAvailable
end
