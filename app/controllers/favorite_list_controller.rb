class FavoriteListController < ApplicationController


    def favorite
        # byebug
        FavoriteList.create_or_find_by(funder_id:params["user"],campaign_id:params["campaign"].to_i)

        user = User.find(params["user"])

        render json: user
    end

    def unFav
    end
end
