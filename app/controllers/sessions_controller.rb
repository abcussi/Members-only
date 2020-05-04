class SessionsController < ApplicationController
    def new
    end
  
    def create
        user = User.find_by(email: params[:session][:email])
        if user && user.authenticate(params[:session][:password])
          log_in_user(user)
          remember(user)
          redirect_to feed_path
        else
    
        end
      end
    
      def delete
        log_out(current_user)
    end
end
