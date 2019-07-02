class CampaignSerializer < ActiveModel::Serializer
  attributes :id,:title, :campaign_img, :funding_goal,:goal_achieved, :description,:location,:featured, :category, :duration, :amount_funded

  belongs_to :creator, class_name: "User"
  has_many :favorite_lists
  has_many :funded_campaigns
  has_many :campaign_collaborators


  # def collab
  #     collab = []
  #     self.object.campaign_collaborators.map do |lab|
  #       user = User.find(lab.collaborator_id)
  #       collab << {collab_id: lab.id,id:user.id, username:user.username, profession:user.profession}
  #       # return collab.unique
  #     end
  #   end
end
