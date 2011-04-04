class CleanupProvinces < ActiveRecord::Migration
  def self.up
    transaction do
      drop_table :prov_codes2
      
      rename_table :prov_codes1, :provinces

      change_table "provinces" do |t|
        t.rename "Prov_ID", "number"
        t.rename "ABBREVIATE", "abbreviation"
        t.rename "Prov_Nm", "name"
      end
    end
  end

  def self.down
    transaction do
      change_table "provinces" do |t|
        t.rename "number", "Prov_ID"
        t.rename "abbreviation", "ABBREVIATE"
        t.rename "name", "Prov_Nm"
      end

      rename_table :provinces, :prov_codes1

      create_table "prov_codes2" do |t|
        t.string "Prov_ID"
        t.string "ABBREVIATE"
        t.string "Prov_Nm"
      end
    end
  end
end
