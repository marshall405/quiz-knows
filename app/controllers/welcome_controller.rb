class WelcomeController < ApplicationController
  
  def index
    @ads = [ {"name": "ad 1 click here", "url": "www.amazon.com"},{"name": "ad 2 click here", "url": "www.amazon.com"}]
    # @user = User.new 
  
    render :login

  end


end


