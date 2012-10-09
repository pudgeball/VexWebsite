class PageController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  include PageHelper
  
  def index
    @page_title = "Welcome!"
  end
  
  def user    
    @page_title = "Profile"
    
    @teams = retrieveTeams(current_user.school)
    @events = filterForUpcoming(retrieveEvents(@teams))
  end
end
