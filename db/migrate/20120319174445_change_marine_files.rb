class ChangeMarineFiles < ActiveRecord::Migration
  def up
    change_column :marine_files, :file_number, :decimal
    change_column :marine_files, :notes, :text
    change_column :marine_files, :legal, :text
  end

  def down
  end
end
