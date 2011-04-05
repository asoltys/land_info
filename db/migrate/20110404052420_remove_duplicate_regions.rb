class RemoveDuplicateRegions < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM regions AS bad_rows
      INNER JOIN (
      SELECT 
        number,
        code,
        min(id) AS min_id
      FROM regions
      GROUP BY 
        number,
        code
      HAVING count(*) > 1
      ) AS good_rows 
      ON  good_rows.number 		      = bad_rows.number
      AND good_rows.code        		= bad_rows.code
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
