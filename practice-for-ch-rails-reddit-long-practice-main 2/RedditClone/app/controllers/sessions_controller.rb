class SessionsController < ApplicationController
    def create
        incoming_username = params[:user][:username]
        incoming_password = params[:user][:password]

        @user = User.find_by_credentials(incoming_username, incoming_password)
        if @user
            login(@user)
            redirect_to subs_url ###change to subs page 
        else 
            render :new
        end
    end

    def new
        render :new
    end

    def destroy 
        if logged_in?
            logout
            redirect_to session_new_url
        else 
            redirect_to user_url
        end
    end
end
