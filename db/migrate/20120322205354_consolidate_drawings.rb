class ConsolidateDrawings < ActiveRecord::Migration
  def change
    rename_column :drawings, :tiff_file, :file_name
    remove_column :drawings, :surveyor
    remove_column :drawings, :plan

    sql = <<-SQL
      UPDATE drawings SET file_name = CONCAT(file_name, '.tif');

      INSERT INTO drawings (file_name, plan_file_id)
        SELECT CONCAT(file, '.dwf'), plan_file_id
        FROM dwf_files 
        WHERE file IS NOT NULL;

      INSERT INTO drawings (file_name, plan_file_id)
        SELECT CONCAT(pdf, '.pdf'), plan_file_id
        FROM dwf_files
        WHERE pdf IS NOT NULL;
    SQL

    sql.strip.split(';').each do |s| 
      ActiveRecord::Base.connection.execute(s) 
    end 

    drop_table :dwf_files
  end
end
