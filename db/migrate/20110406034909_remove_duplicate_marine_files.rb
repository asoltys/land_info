class RemoveDuplicateMarineFiles < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM marine_files AS bad_rows
      INNER JOIN (
      SELECT 
        file_number,
        location_number,
        expiry,
        max(id) AS min_id
      FROM marine_files
      GROUP BY 
        file_number,
        location_number,
        expiry
      HAVING count(*) > 1
      ) AS good_rows 
      ON  ((good_rows.file_number = bad_rows.file_number) 
        OR (good_rows.file_number is null and bad_rows.file_number is null))
      AND ((good_rows.location_number = bad_rows.location_number) 
        OR (good_rows.location_number is null and bad_rows.location_number is null))
      AND ((good_rows.expiry = bad_rows.expiry) 
        OR (good_rows.expiry is null and bad_rows.expiry is null))
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
