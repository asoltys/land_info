class CleanupMarineFiles < ActiveRecord::Migration
  def self.up
    rename_table :marinefile, :marine_files

    change_table "marine_files" do |t|
      t.rename "File_No", "file_number"
      t.rename "Loc_Num", "location_number"
      t.rename "Lat_Deg", "latitude_degrees"
      t.rename "Lat_Min", "latitude_minutes"
      t.rename "Lat_Sec", "latitude_seconds"
      t.rename "Lon_Deg", "longitude_degrees"
      t.rename "Lon_Min", "longitude_minutes"
      t.rename "Lon_Sec", "longitude_seconds"
      t.rename "Lat_Deg_Dec", "latitude_degrees_decimal"
      t.rename "Lon_Deg_Dec", "longitude_degrees_decimal"
      t.rename "Lot_Num", "lot_number"
      t.rename "Law_Rec", "law_record"
      t.rename "District_Cd", "district_company"
      t.rename "Secondary_Loc", "secondary_location"
      t.rename "DFRP", "dfrp_number"
      t.rename "Prov_file", "province_file"
      t.rename "RES_No", "reservation_number"
      t.rename "RES_Use", "reservation_use"
      t.rename "RES_Type", "reservation_type"
      t.rename "Area_Ha", "area_hectares"
      t.rename "Area_Ac", "area_acres"
      t.rename "RES_Term", "reservation_term"
      t.rename "Co-Dept", "cooperating_department"
      t.rename "Prov_Con", "provincial_contact"
      t.rename "Fed_Cont", "federal_contact"
      t.rename "Reg_Cd", "registration_code"
      t.rename "FGO_Cd", "fgo_code"
    end
  end

  def self.down
    change_table "marine_files" do |t|
      t.rename"file_number", "File_No"
      t.rename"location_number", "Loc_Num"
      t.rename"latitude_degrees", "Lat_Deg"
      t.rename"latitude_minutes", "Lat_Min"
      t.rename"latitude_seconds", "Lat_Sec"
      t.rename"longitude_degrees", "Lon_Deg"
      t.rename"longitude_minutes", "Lon_Min"
      t.rename"longitude_seconds", "Lon_Sec"
      t.rename"latitude_degrees_decimal", "Lat_Deg_Dec"
      t.rename"longitude_degrees_decimal", "Lon_Deg_Dec"
      t.rename"lot_number", "Lot_Num"
      t.rename"law_record", "Law_Rec"
      t.rename"district_company", "District_Cd"
      t.rename"secondary_location", "Secondary_Loc"
      t.rename"dfrp_number", "DFRP"
      t.rename"province_file", "Prov_file"
      t.rename"reservation_number", "RES_No"
      t.rename"reservation_use", "RES_Use"
      t.rename"reservation_type", "RES_Type"
      t.rename"area_hectares", "Area_Ha"
      t.rename"area_acres", "Area_Ac"
      t.rename"reservation_term", "RES_Term"
      t.rename"cooperating_department", "Co-Dept"
      t.rename"provincial_contact", "Prov_Con"
      t.rename"federal_contact", "Fed_Cont"
      t.rename"registration_code", "Reg_Cd"
      t.rename"fgo_code", "FGO_Cd"
    end

    rename_table :marine_files, :marinefile
  end
end
