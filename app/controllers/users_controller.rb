class UsersController < ApplicationController
before_action :authenticate_user!
    def index
        redirect_to root_path unless current_user.admin?
        @users = User.all 
    end
    def user_type
        @user = User.find(params[:id])
        @user.admin =! @user.admin
        @user.save
        redirect_to users_path
    end    
end    