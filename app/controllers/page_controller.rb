class PageController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  include PageHelper
  
  def index
    @page_title = "Page#index"
  end
  
  def user    
    @page_title = "My Profile"
    
    @teams = retrieveTeams(current_user.school)
    @events = retrieveEvents(@teams)
  end
end
