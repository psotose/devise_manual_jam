class UsersController < ApplicationController
before_action :authenticate_user!
    def index
        redirect_to root_path unless current_user.admin?
        @users = User.all 
    end


end    