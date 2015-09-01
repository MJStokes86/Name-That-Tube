class CreateVideoClues < ActiveRecord::Migration
  def change
    create_table :video_clues do |t|
      t.string :name
      t.text :video_url
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
