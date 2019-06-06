class Campaign < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :favorite_lists
    has_many :funded_campaigns
    has_many :campaign_collaborators

end
