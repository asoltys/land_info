class AddIndexes < ActiveRecord::Migration
  def up
    add_index :survey_files, :survey_file, :unique => true
    add_index :survey_files, :location_id
    add_index :marine_files, :file_number
    add_index :marine_files, :location_id
    add_index :marine_files, :expiry
    add_index :plan_files, :plan_number
    add_index :plan_files, :title
    add_index :plan_files, :location_id
    add_index :plan_files, :survey_file_id
  end

  def down
  end
end
