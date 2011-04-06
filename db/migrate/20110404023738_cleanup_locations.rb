class CleanupLocations < ActiveRecord::Migration
  def self.up
    transaction do
      drop_table :nbc_loc2

      change_table :nbc_loc1 do |t|
        if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
          t.rename "MAPSHEET", "mapsheet"
          t.rename "LATITUDE", "latitude"
          t.rename "LONGITUDE", "longitude"
          t.rename "FEATURE_CODE", "feature_code"
        end
        t.rename "OFF_NAME", "name"
        t.rename "LATCALC", "latitude_calculation"
        t.rename "LONCALC", "longitude_calculation"
        t.rename "Loc_Num", "location_number"
        t.rename "Prov_Code", "province_code"
      end

      rename_table :nbc_loc1, :locations
    end
  end

  def self.down
    transaction do
      rename_table :locations, :nbc_loc1

      change_table :nbc_loc1 do |t|
        if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
          t.rename "mapsheet", "MAPSHEET"
          t.rename "latitude", "LATITUDE"
          t.rename "longitude", "LONGITUDE"
          t.rename "feature_code", "FEATURE_CODE"
        end
        t.rename "name", "OFF_NAME"
        t.rename "latitude_calculation", "LATCALC"
        t.rename "longitude_calculation", "LONCALC"
        t.rename "location_number", "Loc_Num"
        t.rename "province_code", "Prov_Code"
      end

      create_table "nbc_loc1" do |t|
        t.string "OFF_NAME"
        t.string "MAPSHEET"
        t.string "LATITUDE"
        t.string "LONGITUDE"
        t.string "LATCALC"
        t.string "LONCALC"
        t.string "Loc_Num"
        t.string "FEATURE_CODE"
        t.string "Prov_Code"
      end
    end
  end
end
