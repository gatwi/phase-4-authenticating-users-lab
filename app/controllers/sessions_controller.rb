class SessionsController < ApplicationController 

    def create 
        user = User.find_bu(username: params[:username])
        session[:user_id] = user.user_id
        render json: user
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
end
