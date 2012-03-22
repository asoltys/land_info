class CombineDescriptionAndRemark < ActiveRecord::Migration
  def change
    execute <<-SQL
      UPDATE survey_files SET 
        description = CONCAT(description, ' -- ', remark)
      WHERE remark IS NOT NULL
    SQL
  end
end
