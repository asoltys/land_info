class AddSurveyFileReference < ActiveRecord::Migration
  def self.up
    change_table :plan_files do |t|
      t.references :survey_file
    end

    execute "UPDATE plan_files SET survey_file_id = (SELECT id FROM survey_files WHERE survey_files.survey_file = plan_files.survey_file LIMIT 1)"   
  end

  def self.down
  end
end
