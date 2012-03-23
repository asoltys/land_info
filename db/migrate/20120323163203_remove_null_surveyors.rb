class RemoveNullSurveyors < ActiveRecord::Migration
  def change 
    execute <<-SQL
      DELETE FROM surveyors WHERE first_name IS NULL or last_name IS NULL
    SQL
  end
end
