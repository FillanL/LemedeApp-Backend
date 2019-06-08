class Api::V1::UsersController < ApplicationController
    # beforre_action: 

    def index
        user = User.all
        render json: user
    end

    def create
        user = User.create(user_params)
        # byebug
    end

    def update
    end

    def delete
    end

    private
    def user_params
        params.require(:user).permit(:age,:username, :bio,:location, :profession,:first_name,:last_name,:password)
    end

    def find_user
        User.find(params.require(:user).permit(:id))
    end
end
