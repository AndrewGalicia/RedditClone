class UsersController < ApplicationController

    def new
        @user = User.new 
        render :new 
    end

    def create
        @user = User.new(users_params)
        if @user.save
            login(@user)
            redirect_to subs_url 
        else
            flash.now[:errors] = @user.errors.full_mesages
            render :new
        end  
    end



    def index
        @users = User.all 
        render :index
    end

    def users_params
        params.require(:user).permit(:username, :password)
    end

end
