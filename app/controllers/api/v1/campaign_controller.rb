class Api::V1::CampaignController < ApplicationController
  before_action :find_campaign, only: [:show, :update,:delete]

  def index
    projects = Campaign.all

    projects.map do |x|
        if x.goal_achieved === false
            x.update_funded_status()
        end
    end
    render json: projects
  end

  def show
    # byebug
    render json: find_campaign
  end

  def create
    
    # byebug
   params["campaign"]["creator_id"] = decode_token(params["creator_id"])

   
   campaign = Campaign.create(campaign_params)

   if campaign.campaign_img === ""
      campaign.campaign_img = "https://images.unsplash.com/photo-1528873981-36c6afde7b9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80"
      campaign.save
   end
   
   campaign.funding_goal = campaign.funding_goal.to_i

    render json: CampaignSerializer.new(campaign)
  end

  def update
    # render json: find_campaign
    campaign = Campaign.find(params[:id])
    campaign.update(update_campaign_params)
    # byebug

    render json: CampaignSerializer.new(campaign)
  end

  def destroy
    # byebug
    campaign = Campaign.find(params[:id].to_i)

    # return funds to users if campaign is not completed
    # if !campaign.goal_achieved
    #   campaign.funded_campaigns.map do |a| 
    #         user = User.find(a.funder_id)
    #         user.account_balance = user.account_balance + a.donated_amount
    #         user.save
    #   end
    # end
    campaign.destroy

    render json: Campaign.all
  end

private
  def campaign_params
    params.require(:campaign).permit(:title,:category,:location,:description,:funding_goal,:creator_id, :campaign_img)
 
  end
  def update_campaign_params
    params.require(:updatedCampaign).permit(:title,:category,:location,:description,:funding_goal, :campaign_img)
 
  end

  def find_campaign
    campaign = Campaign.find(params[:id])
  end
end
