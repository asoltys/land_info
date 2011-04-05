class AddReferencesToDrawings < ActiveRecord::Migration
  def self.up
    transaction do
      change_table :drawings do |t|
        t.references :surveyor
        t.references :location
      end

      execute "UPDATE drawings SET surveyor_id = (SELECT id FROM surveyors WHERE CONCAT(first_name, ' ', last_name) = drawings.surveyor)"   
      execute "UPDATE drawings SET location_id = (SELECT id FROM locations WHERE locations.name = drawings.location LIMIT 1)"   
    end
  end

  def self.down
    remove_column :drawings, :location_id
    remove_column :drawings, :surveyor_id
  end
end
