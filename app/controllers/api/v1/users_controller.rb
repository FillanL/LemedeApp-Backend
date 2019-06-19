class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :delete]

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create_or_find_by(user_params)
        # byebug
    end

    def update
        user = User.find(params[:id])

        newVal = user.account_balance + params[:account_balance].to_i
        user = user.update(account_balance: newVal)
        # byebug
        render json: User.find(params[:id])
    end

    def destroy
        # byebug
        user = User.find(params[:id].to_i)
        user.destroy
        # byebug
        render json: CampaignSerializer.new(campaign)
    end

    private
    def user_params
        params.require(:user).permit(:age,:username, :bio,:location, :profession,:first_name,:last_name,:password)
    end

    def find_user
       user = User.find(params[:id])
    end
end
