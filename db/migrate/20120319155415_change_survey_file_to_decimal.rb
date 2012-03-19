class ChangeSurveyFileToDecimal < ActiveRecord::Migration
  def up
    change_column :survey_files, :survey_file, :decimal
  end

  def down
  end
end
