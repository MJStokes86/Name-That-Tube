class CreateGameStats < ActiveRecord::Migration
  def change
    create_table :game_stats do |t|
      t.integer :player_id
      t.integer :score_id

      t.timestamps null: false
    end
  end
end
