class PageController < ApplicationController
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
    @page_title = "Welcome!"
  end
end
