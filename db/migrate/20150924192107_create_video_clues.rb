class CreateVideoClues < ActiveRecord::Migration
  def change
    create_table :video_clues do |t|
      t.references :question, index: true
      t.string :youtube_id
      t.integer :time

      t.timestamps null: false
    end
  end
end
