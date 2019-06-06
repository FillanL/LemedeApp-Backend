class FavoriteList < ApplicationRecord
    belongs_to :funder, class_name: "User"
    belongs_to :campaign
end