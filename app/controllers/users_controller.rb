class UsersController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.new(user_params)

        if @user.save!
            login!(@user)
            # redirect_to user_url
            render :index

        else
            render :new 
        end
    end

    def show 
        if logged_in?
            redirect_to user_url(@user.id)
        else
            render :new
        end
    end

    def index
        @users = User.all
        render :index
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end


end
