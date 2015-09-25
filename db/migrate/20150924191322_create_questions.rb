class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :category, index: true
      t.string :question
      t.timestamps null: false
    end
  end
end
