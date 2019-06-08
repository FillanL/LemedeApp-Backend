class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :age
      t.integer :account_balance, default: 0
      t.string :password_digest
      t.string :username
      t.string :bio
      t.string :location
      t.string :profession
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
