class Campaign < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :favorite_lists, :dependent => :delete_all
    has_many :funded_campaigns, :dependent => :delete_all
    has_many :campaign_collaborators, :dependent => :delete_all

    def update_funded_status
        if self.funding_goal <= self.amount_funded
            self.goal_achieved = true
        end
    end

    # def campaign_collaborators
    #     User.find(object.campaign_collaborators.collaborator_id)
    # end

end
