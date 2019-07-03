class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_img, :first_name, :location, :last_name, :profession, :bio, :account_balance, :total_donated


  # add collab to project
  has_many :campaign_collaborators, class_name: "CampaignCollaborator", foreign_key: "collaborator_id"
  # when favoriting a campaign
  has_many :favorite_lists, class_name: "FavoriteList", foreign_key: "funder_id"
  # when donating to a campaign
  has_many :funded_campaigns, class_name: "FundedCampaign", foreign_key: "funder_id"
  # when creating a campaign
  has_many :campaigns, class_name: "Campaign", foreign_key: "creator_id"


  def total_donated
    # user = User.find(self.id)
array = []
    FundedCampaign.all.map do |a|
      if a["funder_id"] === self.object.id
        array <<  a["donated_amount"]
      end
    end
    return array.reduce(:+)
  end
end
