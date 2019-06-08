class CampaignSerializer < ActiveModel::Serializer
  attributes :id,:title,:funding_goal,:goal_achieved, :description,:location,:featured, :category, :duration, :amount_funded

  belongs_to :creator, class_name: "User"
  has_many :favorite_lists
  has_many :funded_campaigns
  has_many :campaign_collaborators
end
