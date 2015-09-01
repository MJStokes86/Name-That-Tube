class CreateQuestionnaire < ActiveRecord::Migration
  def change
    create_table :questionnaire do |t|
      t.string :question
      t.string :choices
      t.string :correct_answer
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
