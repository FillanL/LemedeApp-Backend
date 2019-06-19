class UserCampaignsController < ApplicationController


    def back_campaign
        # byebug
        campaign = Campaign.find(params[:campaign_id])
        user = User.find(params[:user_id])
        # math
# byebug
        new_user_balance = user.account_balance - params[:donate].to_i 
        
        campaign_funded_amount = campaign.amount_funded + params[:donate].to_i
# byebug

        user = user.update(account_balance: new_user_balance)

        campaign = campaign.update(amount_funded: campaign_funded_amount)

        campaign = Campaign.find(params[:campaign_id])
        
        if campaign.funding_goal >= campaign.amount_funded
            campaign.goal_achieved = true
            campaign.save
        end

# byebug
        funded = FundedCampaign.create(
            funder_id:funded_campaigns[:user_id],
            donated_amount:funded_campaigns[:donate],
            campaign_id: funded_campaigns[:campaign_id]
            )
# byebug
        render json: {campaign: CampaignSerializer.new(Campaign.find(params[:campaign_id])),user: User.find(params[:user_id])}
        
    end

    def featured
        # byebug
        
        user = User.find(params[:user_id])
        user.account_balance = user.account_balance - 100
        user.save
        
        campaign = Campaign.find(params[:campaign_id])
        campaign.featured =  true
         campaign.save
        # byebug

        # campaign = Campaign.find(params[:campaign_id])
        # user = User.find(params[:user_id])

         render json: {campaign: CampaignSerializer.new(Campaign.find(params[:campaign_id])),user: User.find(params[:user_id])}
    end

    private
    def funded_campaigns
        params.require(:user_campaign).permit(:user_id, :donate, :campaign_id)
    end
end
