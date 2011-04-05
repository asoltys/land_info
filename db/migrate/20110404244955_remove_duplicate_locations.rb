class RemoveDuplicateLocations < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      SELECT bad_rows.*
      FROM locations AS bad_rows
      INNER JOIN (
      SELECT 
        name,
        mapsheet,
        latitude,
        longitude,
        feature_code,
        province_code,
        min(id) AS min_id
      FROM locations
      GROUP BY 
        name,
        mapsheet,
        latitude,
        longitude,
        feature_code,
        province_code
      HAVING count(*) > 1
      ) AS good_rows 
      ON ((good_rows.name = bad_rows.name) 
        OR (good_rows.name is null and bad_rows.name is null))
      AND ((good_rows.mapsheet = bad_rows.mapsheet) 
        OR (good_rows.mapsheet is null and bad_rows.mapsheet is null))
      AND ((good_rows.latitude = bad_rows.latitude) 
        OR (good_rows.latitude is null and bad_rows.latitude is null))
      AND ((good_rows.longitude = bad_rows.longitude) 
        OR (good_rows.longitude is null and bad_rows.longitude is null))
      AND ((good_rows.feature_code = bad_rows.feature_code) 
        OR (good_rows.feature_code is null and bad_rows.feature_code is null))
      AND ((good_rows.province_code = bad_rows.province_code) 
        OR (good_rows.province_code is null and bad_rows.province_code is null))
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
