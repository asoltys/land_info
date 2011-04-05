class RemoveDuplicatePlans < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM plan_files AS bad_rows
      INNER JOIN (
      SELECT 
        plan_number,
        max(id) AS min_id
      FROM plan_files
      GROUP BY 
        plan_number
      HAVING count(*) > 1
      ) AS good_rows 
      ON  good_rows.plan_number = bad_rows.plan_number
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
