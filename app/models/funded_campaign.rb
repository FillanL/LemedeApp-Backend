class FundedCampaign < ApplicationRecord
    belongs_to :funder, class_name: "User"
    belongs_to :campaign
end
