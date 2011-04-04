class RemoveDuplicateFgous < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM fgou AS bad_rows
      INNER JOIN (
      SELECT 
        fgo, 
        fgou, 
        abbrev, 
        name, 
        min(id) AS min_id
      FROM fgou
      GROUP BY 
        fgo, 
        fgou, 
        abbrev, 
        name 
      HAVING count(*) > 1
      ) AS good_rows 
      ON  good_rows.fgo     = bad_rows.fgo
      AND good_rows.fgou    = bad_rows.fgou
      AND good_rows.abbrev  = bad_rows.abbrev
      AND good_rows.name    = bad_rows.name
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
