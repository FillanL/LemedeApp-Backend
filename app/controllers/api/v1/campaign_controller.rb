class Api::V1::CampaignController < ApplicationController
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
  end

  def create
    
    # byebug
    campaign = Campaign.create(campaign_params)
    campaign.funding_goal = campaign.funding_goal.to_i
    campaign.creator_id = 1

    campaign.save
    # byebug

    render json: campaign
  end

  def update
  end

  def delete
  end

private
  def campaign_params
    params.require(:campaign).permit(:title,:category,:location,:description,:funding_goal)
  end
end
