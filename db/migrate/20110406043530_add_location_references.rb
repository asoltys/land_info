class AddLocationReferences < ActiveRecord::Migration
  def self.up
    change_table :survey_files do |t|
      t.references :location
    end

    change_table :plan_files do |t|
      t.references :location
    end

    change_table :marine_files do |t|
      t.references :location
    end


    execute "UPDATE survey_files SET location_id = (SELECT id FROM locations WHERE locations.location_number = survey_files.location_number LIMIT 1)"   
    execute "UPDATE plan_files SET location_id = (SELECT id FROM locations WHERE locations.location_number = plan_files.location_number LIMIT 1)"   
    execute "UPDATE marine_files SET location_id = (SELECT id FROM locations WHERE locations.location_number = marine_files.location_number LIMIT 1)"   
  end

  def self.down
  end
end
