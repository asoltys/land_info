class CleanupSurveyFiles < ActiveRecord::Migration
  def self.up
    rename_table :nSurveyFiles1, :survey_files
  end

  def self.down
    rename_table :survey_files, :nSurveyFiles1
  end
end
