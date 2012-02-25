class ChangeDateFields < ActiveRecord::Migration
  def up
    execute <<-SQL
      UPDATE survey_files SET 
        start_date = date(str_to_date(start_date, '%m/%d/%Y')),
        completion_date = date(str_to_date(completion_date, '%m/%d/%Y'))
    SQL

    change_column :survey_files, :start_date, :date
    change_column :survey_files, :completion_date, :date
  end

  def down
  end
end
