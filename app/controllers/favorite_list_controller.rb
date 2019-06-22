class FavoriteListController < ApplicationController


    def favorite
        # byebug
        FavoriteList.find_or_create_by(funder_id:params["user"],campaign_id:params["campaign"].to_i)

        user = User.find(params["user"])
# handle un fav.. check if campaign is included if true... unfav(destroy)... else fav...
        render json: user
       
    end

    # def unFav
    # end
end
