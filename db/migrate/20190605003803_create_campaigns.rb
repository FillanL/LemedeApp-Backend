class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.integer :creator_id
      t.boolean :featured, default: false
      t.integer :funding_goal
      t.string :category
      t.string :location
      t.string :description
      t.string :title
      t.integer :amount_funded, default: 0
      t.integer :duration
      t.boolean :goal_achieved, default: false

      t.timestamps
    end
  end
end

