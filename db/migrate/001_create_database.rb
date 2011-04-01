class CreateDatabase < ActiveRecord::Migration
  def self.up
    if ActiveRecord::Base.connection.tables.include?("bclslist")
      add_column :bclslist, :id, :primary_key => true
      add_column :dwf_file, :id, :primary_key => true
      add_column :featcode1, :id, :primary_key => true
      add_column :featcode2, :id, :primary_key => true
      add_column :fgo, :id, :primary_key => true
      add_column :fgou, :id, :primary_key => true
      add_column :lnd_dstrct1, :id, :primary_key => true
      add_column :lnd_dstrct2, :id, :primary_key => true
      add_column :marinefile, :id, :primary_key => true
      add_column :nbc_loc1, :id, :primary_key => true
      add_column :nbc_loc2, :id, :primary_key => true
      add_column :nsurveyfiles1, :id, :primary_key => true
      add_column :nsurveyfiles2, :id, :primary_key => true
      add_column :prov_codes1, :id, :primary_key => true
      add_column :prov_codes2, :id, :primary_key => true
      add_column :region_bdy, :id, :primary_key => true
      add_column :sf_tracking, :id, :primary_key => true
      add_column :surv_pl, :id, :primary_key => true
      add_column :survey_pln_title, :id, :primary_key => true
      add_column :totscan, :id, :primary_key => true
    else 
      create_table "bclslist" do |t|
        t.string "LAST_NAME"
        t.string "FIRST_NAME"
        t.string "MEMBER_NUM"
        t.string "STREET_ADD"
        t.string "CITY"
        t.string "PROVINCE"
        t.string "POSTAL_COD"
        t.string "tel"
        t.string "Inits"
        t.string "Company"
        t.string "fax"
        t.string "Twn_based"
      end

      create_table "dwf_file" do |t|
        t.string "DWF_FILE"
        t.string "Plan"
        t.string "PDF_FILE"
      end

      create_table "featcode1" do |t|
        t.string "FEAT_TYPE"
        t.string "FEATURE_CO"
        t.string "SYMBOL"
        t.string "COLUMN"
        t.string "ROW"
        t.string "COLOUR"
      end

      create_table "featcode2" do |t|
        t.string "FEAT_TYPE"
        t.string "FEATURE_CO"
        t.string "SYMBOL"
        t.string "COLUMN"
        t.string "ROW"
        t.string "COLOUR"
      end

      create_table "fgo" do |t|
        t.string "FGO"
        t.string "Type"
        t.string "Abbrev"
        t.string "Name"
      end

      create_table "fgou" do |t|
        t.string "FGO"
        t.string "FGOU"
        t.string "Abbrev"
        t.string "Name"
      end

      create_table "lnd_dstrct1" do |t|
        t.string "Land_District_Name"
        t.string "Land_District_Code"
      end

      create_table "lnd_dstrct2" do |t|
        t.string "Land_District_Name"
        t.string "Land_District_Code"
      end

      create_table "marinefile" do |t|
        t.string "File_No"
        t.string "Loc_Num"
        t.string "Lat_Deg"
        t.string "Lat_Min"
        t.string "Lat_Sec"
        t.string "Lon_Deg"
        t.string "Lon_Min"
        t.string "Lon_Sec"
        t.string "Lat_Deg_Dec"
        t.string "Lon_Deg_Dec"
        t.string "Lot_Num"
        t.string "Law_Rec"
        t.string "Returned"
        t.string "District_Cd"
        t.string "Secondary_Loc"
        t.string "Marine_tif"
        t.string "DFRP"
        t.string "FGOU_Cd"
        t.string "Prov_file"
        t.string "Prv_File"
        t.string "FED_File"
        t.string "RES_No"
        t.string "RES_Use"
        t.string "RES_Type"
        t.string "OIC_PC"
        t.string "Area_Ha"
        t.string "Area_Ac"
        t.string "Expiry"
        t.string "RES_Term"
        t.string "Co-Dept"
        t.string "PWC_Cust"
        t.string "Prov_Con"
        t.string "Fed_Cont"
        t.string "Notes"
        t.string "Reg_Cd"
        t.string "Legal"
        t.string "FGO_Cd"
        t.string "NTS_sheet"
        t.string "Gator"
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

      create_table "nbc_loc2" do |t|
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

      create_table "nsurveyfiles1" do |t|
        t.string "Surv_File"
        t.string "Proj_Num"
        t.string "SSA_Num"
        t.string "CR_File"
        t.string "Strt_Date"
        t.string "Cmpl_Date"
        t.string "Proj_Man"
        t.string "Dept_Sec"
        t.string "Descript"
        t.string "SSA_Amount"
        t.string "Bulk_Num"
        t.string "Fin_Code"
        t.string "Dept_Abbr"
        t.string "Active_File"
        t.string "Remark"
        t.string "Location_second"
        t.string "Dept_Contact"
        t.string "Dept_tel"
        t.string "Loc_Num"
        t.string "Strt_loc"
        t.string "Object_Nm"
        t.string "EDRM_Num"
        t.string "Sigma"
        t.string "EDRM_No"
      end

      create_table "nsurveyfiles2" do |t|
        t.string "Surv_File"
        t.string "Proj_Num"
        t.string "SSA_Num"
        t.string "CR_File"
        t.string "Strt_Date"
        t.string "Cmpl_Date"
        t.string "Proj_Man"
        t.string "Dept_Sec"
        t.string "Descript"
        t.string "SSA_Amount"
        t.string "Bulk_Num"
        t.string "Fin_Code"
        t.string "Dept_Abbr"
        t.string "Active_File"
        t.string "Remark"
        t.string "Location_second"
        t.string "Dept_Contact"
        t.string "Dept_tel"
        t.string "Loc_Num"
        t.string "Strt_loc"
        t.string "Object_Nm"
        t.string "EDRM_Num"
        t.string "Sigma"
        t.string "EDRM_No"
      end

      create_table "prov_codes1" do |t|
        t.string "Prov_ID"
        t.string "ABBREVIATE"
        t.string "Prov_Nm"
      end

      create_table "prov_codes2" do |t|
        t.string "Prov_ID"
        t.string "ABBREVIATE"
        t.string "Prov_Nm"
      end

      create_table "region_bdy" do |t|
        t.string "Region_Nm"
        t.string "Region_Cd"
      end

      create_table "sf_tracking" do |t|
        t.string "SF_present"
        t.string "SF_tracked"
      end

      create_table "surv_pl" do |t|
        t.string "Plan_No"
        t.string "Size"
        t.string "Surv_Fi"
        t.string "Secondary_Location"
        t.string "Street_Location"
        t.string "Object"
        t.string "Field_Book"
        t.string "BCGS"
        t.string "ISA_Code"
        t.string "Dist_Code"
        t.string "Dist_Lot"
        t.string "Latitude"
        t.string "Longitude"
        t.string "North_UTM"
        t.string "East_UTM"
        t.string "UTM_Zone"
        t.string "Old_Plan_No"
        t.string "Title"
        t.string "Plan_Close"
        t.string "Plan_Reg_No"
        t.string "LTO_Code"
        t.string "membernum"
        t.string "Company_Name"
        t.string "RecNo"
        t.string "DFRPNum"
        t.string "Loc_Num"
        t.string "EDRM"
        t.string "Crown_Lnd_Plan_No"
        t.string "CLSR_Plan"
      end

      create_table "survey_pln_title" do |t|
        t.string "LTO_Pln_No"
        t.string "PID_PIN"
        t.string "Cert_Number"
        t.string "Owner_on_Title"
      end

      create_table "totscan" do |t|
        t.string "TIFF_FILE"
        t.string "BCGS"
        t.string "DRAWN_BY"
        t.string "SURVEYOR"
        t.string "SIZE"
        t.string "SECTOR"
        t.string "LOCATION"
        t.string "PROJECT_NU"
        t.string "TITLE"
        t.string "Plan"
        t.string "Status"
      end

      if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
        `mysql -u root -pMPJzfq97 -D land_info < #{RAILS_ROOT}/db/seed_data.sql`
      end
    end
  end

  def self.down
    
  end
end
