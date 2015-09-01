class RenameQuestionnaire < ActiveRecord::Migration
  def change
  	rename_table("questionnaire", "questionnaires")
  end
end
