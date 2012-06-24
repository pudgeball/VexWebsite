class PageController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @page_title = "Index"
  end
  
  def admin
    @page_title = "Admin"
    
    respond_to do |format|
      format.html
    end
  end
  
  def user    
    @page_title = "My Profile"
  end
end
