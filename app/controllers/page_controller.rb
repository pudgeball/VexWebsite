class PageController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @page_title = "Page#index"
  end
  
  def user    
    @page_title = "My Profile"
  end
end
