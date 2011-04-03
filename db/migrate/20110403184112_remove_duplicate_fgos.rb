class RemoveDuplicateFgos < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM fgo AS bad_rows
      INNER JOIN (
        SELECT 
          fgo, 
          type, 
          abbrev, 
          name, 
          min(id) AS min_id
        FROM fgo 
        GROUP BY 
          fgo, 
          type, 
          abbrev, 
          name 
        HAVING count(*) > 1
      ) AS good_rows 
      ON  good_rows.fgo     = bad_rows.fgo
      AND good_rows.type    = bad_rows.type
      AND good_rows.abbrev  = bad_rows.abbrev
      AND good_rows.name    = bad_rows.name
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
