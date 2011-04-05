class RemoveDuplicatesFromSurveyors < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM surveyors AS bad_rows
      INNER JOIN (
      SELECT 
        first_name,
        last_name,
        street_address,
        phone,
        min(id) AS min_id
      FROM surveyors
      GROUP BY 
        first_name,
        last_name,
        street_address,
        phone
      HAVING count(*) > 1
      ) AS good_rows 
      ON  good_rows.first_name = bad_rows.first_name
      AND good_rows.last_name = bad_rows.last_name
      AND ((good_rows.street_address = bad_rows.street_address) 
        OR (good_rows.street_address is null and bad_rows.street_address is null))
      AND ((good_rows.phone = bad_rows.phone) 
        OR (good_rows.phone is null and bad_rows.phone is null))
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
