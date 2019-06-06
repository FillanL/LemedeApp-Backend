class CampaignCollaborator < ApplicationRecord
    belongs_to :collaborator, class_name: "User"
    belongs_to :campaign
end
