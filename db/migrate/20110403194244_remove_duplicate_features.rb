class RemoveDuplicateFeatures < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      DELETE bad_rows.*
      FROM features AS bad_rows
      INNER JOIN (
      SELECT 
      type, 
      code, 
      symbol, 
      `column`, 
      `row`,
      colour,
      min(id) AS min_id
      FROM features
      GROUP BY 
      type, 
      code, 
      symbol, 
      `column`, 
      `row`,
      colour
      HAVING count(*) > 1
      ) AS good_rows 
      ON  good_rows.type   		= bad_rows.type
      AND good_rows.code   		= bad_rows.code
      AND good_rows.symbol 		= bad_rows.symbol
      AND good_rows.`column`   		= bad_rows.`column`
      AND good_rows.`row`   		= bad_rows.`row`
      AND good_rows.colour    		= bad_rows.colour
      AND good_rows.min_id <> bad_rows.id
    SQL
  end

  def self.down
  end
end
