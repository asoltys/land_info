class IndexSurveyFileDescription < ActiveRecord::Migration
  def change
    add_index :survey_files, :description, :length => 20
  end
end
