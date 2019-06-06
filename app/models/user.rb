class User < ApplicationRecord

    # has_many :campaigns, class_name: "Campaign", foreign_key: "creator_id"
    # has_many :project_funders, class_name: "Campaign", foreign_key: "funder_id"
    # has_many :project_owners, through: :projects_funded, source: :creator
    # has_many :funders, through: :project_funders


    # add collab to project
    has_many :campaign_collaborators, class_name: "CampaignCollaborator", foreign_key: "collaborator_id"
    # when favoriting a campaign
    has_many :favorite_lists, class_name: "FavoriteList", foreign_key: "funder_id"
    # when donating to a campaign
    has_many :funded_campaigns, class_name: "FundedCampaign", foreign_key: "funder_id"
    # when creating a campaign
    has_many :campaigns, class_name: "Campaign", foreign_key: "creator_id"
# validates--------
    # validates :age, presence: true, numericality: {greater_than: 17}
end
