class CleanupSurveyFiles < ActiveRecord::Migration
  def self.up
    rename_table :nsurveyfiles1, :survey_files
  end

  def self.down
    rename_table :survey_files, :nsurveyfiles1
  end
end
