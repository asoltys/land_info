class CleanupSurveyFiles < ActiveRecord::Migration
  def self.up
    rename_table :nSurveyFiles1, :survey_files
    add_column :survey_files, :id, :primary_key
  end

  def self.down
    remove_column :survey_files, :id
    rename_table :survey_files, :nSurveyFiles1
  end
end
