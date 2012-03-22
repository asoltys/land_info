class ChangeSurveyFileToDecimal < ActiveRecord::Migration
  def change
    change_column :survey_files, :survey_file, :decimal, :precision => 8, :scale => 2
  end
end
