class CreateFundedCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :funded_campaigns do |t|
      t.integer :funder_id
      t.integer :campaign_id
      t.integer :donated_amount

      t.timestamps
    end
  end
end
