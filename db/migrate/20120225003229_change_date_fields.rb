class ChangeDateFields < ActiveRecord::Migration
  def up
    sql = <<-SQL
      UPDATE survey_files SET 
        start_date = date(str_to_date(start_date, '%m/%d/%Y')),
        completion_date = date(str_to_date(completion_date, '%m/%d/%Y'));

      ALTER TABLE survey_files MODIFY COLUMN start_date date;
      ALTER TABLE survey_files MODIFY COLUMN completion_date date;
    SQL

    sql.strip.split(';').each do |s| 
      ActiveRecord::Base.connection.execute(s) 
    end 
  end

  def down
  end
end
