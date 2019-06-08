class Campaign < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :favorite_lists
    has_many :funded_campaigns
    has_many :campaign_collaborators

    def update_funded_status
        if self.funding_goal <= self.amount_funded
            self.goal_achieved = true
        end
    end

end
