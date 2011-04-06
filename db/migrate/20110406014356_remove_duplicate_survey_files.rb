class RemoveDuplicateSurveyFiles < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM survey_files AS bad_rows
      INNER JOIN (
      SELECT 
        description,
        survey_file,
        location_number,
        max(id) AS min_id
      FROM survey_files
      GROUP BY 
        description,
        survey_file,
        location_number
      HAVING count(*) > 1
      ) AS good_rows 
      ON  ((good_rows.description = bad_rows.description) 
        OR (good_rows.description is null and bad_rows.description is null))
      AND ((good_rows.survey_file = bad_rows.survey_file) 
        OR (good_rows.survey_file is null and bad_rows.survey_file is null))
      AND ((good_rows.location_number = bad_rows.location_number) 
        OR (good_rows.location_number is null and bad_rows.location_number is null))
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
