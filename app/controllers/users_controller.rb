class UsersController < ApplicationController
    def index
        user = User.all.order('id')
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    private
    
    def user_params
        params.permit(:name, :username, :password)
    end
end
