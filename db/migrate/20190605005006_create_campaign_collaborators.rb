class CreateCampaignCollaborators < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_collaborators do |t|
      t.integer :collaborator_id
      t.integer :campaign_id
      # t.string :collab_title

      t.timestamps
    end
  end
end
