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
      t.string :user_img, default:"https://images.unsplash.com/photo-1549378657-491f8e0456ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"

      t.timestamps
    end
  end
end
