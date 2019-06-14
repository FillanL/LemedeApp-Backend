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

  def delete
    byebug
  end

private
  def campaign_params
    params.require(:campaign).permit(:title,:category,:location,:description,:funding_goal,:creator_id)
 
  end
  def update_campaign_params
    params.require(:updatedCampaign).permit(:title,:category,:location,:description,:funding_goal)
 
  end

  def find_campaign
    campaign = Campaign.find(params[:id])
  end
end
