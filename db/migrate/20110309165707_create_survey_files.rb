class CreateSurveyFiles < ActiveRecord::Migration
  def self.up
    create_table :survey_files do |t|
      t.string :survey_file
      t.string :project_number
      t.string :ssa_number

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_files
  end
end
