class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :user_name
      t.string :password_digest
      t.integer :score
      t,string :role

      t.timestamps null: false
    end
  end
end
