class ApplicationController < ActionController::Base
    before_action :set_ads
    helper_method :current_user
    before_action :authenticate_user

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end

    def set_ads
        
        @ads = [ {"name": "ad 1 click here", "url": "www.amazon.com"},{"name": "ad 2 click here", "url": "www.amazon.com"}] 
    end
    private

    def authenticate_user
      if !current_user
        redirect_to :root 
      end
    end
end
