class ConvertActiveToBoolean < ActiveRecord::Migration
  def up
    sql = <<-SQL
      UPDATE survey_files SET active = '1' WHERE active = 'Y';
      UPDATE survey_files SET active = '0' WHERE active = 'N';
      UPDATE survey_files SET active = '0' WHERE active IS NULL;
    SQL

    sql.strip.split(';').each do |s| 
      ActiveRecord::Base.connection.execute(s) 
    end 

    change_column :survey_files, :active, :boolean
  end

  def down
  end
end
