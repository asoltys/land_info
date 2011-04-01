class RemoveLimits < ActiveRecord::Migration
  def self.up
    change_table "bclslist" do |t|
      t.change "LAST_NAME", :string, :limit => nil
      t.change "FIRST_NAME", :string, :limit => nil
      t.change "STREET_ADD", :string, :limit => nil
      t.change "CITY", :string, :limit => nil
      t.change "PROVINCE", :string, :limit => nil
      t.change "POSTAL_COD", :string, :limit => nil
      t.change "TEL", :string, :limit => nil
      t.change "INITS", :string, :limit => nil
      t.change "COMPANY", :string, :limit => nil
      t.change "FAX", :string, :limit => nil
      t.change "TWN_BASED", :string, :limit => nil
    end

    change_table "bldg_doc" do |t|
    end

    change_table "csurv_fi" do |t|
      t.change   "LOCATION_P", :string, :limit => nil
      t.change   "CR_FILE", :string, :limit => nil
      t.change   "PROJ_MAN", :string, :limit => nil
      t.change   "DEPT_SEC", :string, :limit => nil
      t.change   "DESCRIPT", :string, :limit => nil
      t.change   "FIN_CODE", :string, :limit => nil
      t.change   "DEPT_ABBR", :string, :limit => nil
      t.change   "ACTIVE_FIL", :string, :limit => nil
      t.change   "REMARK", :string, :limit => nil
      t.change   "LOCATION_S", :string, :limit => nil
      t.change   "DEPT_CONTA", :string, :limit => nil
    end

    change_table "dwf_file" do |t|
      t.change "DWF_FILE", :string, :limit => nil
      t.change "Plan", :string, :limit => nil
      t.change "PDF_FILE", :string, :limit => nil
    end

    change_table "fgo" do |t|
      t.change "FGO", :string, :limit => nil
      t.change "TYPE", :string, :limit => nil
      t.change "ABBREV", :string, :limit => nil
      t.change "NAME", :string, :limit => nil
    end

    change_table "fgou" do |t|
      t.change "FGO", :string, :limit => nil
      t.change "FGOU", :string, :limit => nil
      t.change "ABBREV", :string, :limit => nil
      t.change "NAME", :string, :limit => nil
    end

    change_table "featcode" do |t|
      t.change "FEAT_TYPE", :string, :limit => nil
      t.change "SYMBOL", :string, :limit => nil
      t.change "COLOUR", :string, :limit => nil
    end

    change_table "featcode1" do |t|
      t.change "FEAT_TYPE", :string, :limit => nil
      t.change "FEATURE_CO", :string, :limit => nil
      t.change "SYMBOL", :string, :limit => nil
      t.change "COLUMN", :string, :limit => nil
      t.change "ROW", :string, :limit => nil
      t.change "COLOUR", :string, :limit => nil
    end

    change_table "featcode2" do |t|
      t.change "FEAT_TYPE", :string, :limit => nil
      t.change "FEATURE_CO", :string, :limit => nil
      t.change "SYMBOL", :string, :limit => nil
      t.change "COLUMN", :string, :limit => nil
      t.change "ROW", :string, :limit => nil
      t.change "COLOUR", :string, :limit => nil
    end

    change_table "lnd_dstrct1" do |t|
      t.change "Land_District_Name", :string, :limit => nil
      t.change "Land_District_Code", :string, :limit => nil
    end

    change_table "lnd_dstrct2" do |t|
      t.change "Land_District_Name", :string, :limit => nil
      t.change "Land_District_Code", :string, :limit => nil
    end

    change_table "marinefiles" do |t|
      t.change "File_No", :string, :limit => nil
      t.change "Loc_Num", :string, :limit => nil
      t.change "Lat_Deg", :string, :limit => nil
      t.change "Lat_Min", :string, :limit => nil
      t.change "Lat_Sec", :string, :limit => nil
      t.change "Lon_Deg", :string, :limit => nil
      t.change "Lon_Min", :string, :limit => nil
      t.change "Lon_Sec", :string, :limit => nil
      t.change "Lat_Deg_Dec", :string, :limit => nil
      t.change "Lon_Deg_Dec", :string, :limit => nil
      t.change "Lot_Num", :string, :limit => nil
      t.change "Law_Rec", :string, :limit => nil
      t.change "Returned", :string, :limit => nil
      t.change "District_Cd", :string, :limit => nil
      t.change "Secondary_Loc", :string, :limit => nil
      t.change "Marine_tif", :string, :limit => nil
      t.change "DFRP", :string, :limit => nil
      t.change "FGOU_Cd", :string, :limit => nil
      t.change "Prov_file", :string, :limit => nil
      t.change "Prv_File", :string, :limit => nil
      t.change "FED_File", :string, :limit => nil
      t.change "RES_No", :string, :limit => nil
      t.change "RES_Use", :string, :limit => nil
      t.change "RES_Type", :string, :limit => nil
      t.change "OIC_PC", :string, :limit => nil
      t.change "Area_Ha", :string, :limit => nil
      t.change "Area_Ac", :string, :limit => nil
      t.change "Expiry", :string, :limit => nil
      t.change "RES_Term", :string, :limit => nil
      t.change "Co-Dept", :string, :limit => nil
      t.change "PWC_Cust", :string, :limit => nil
      t.change "Prov_Con", :string, :limit => nil
      t.change "Fed_Cont", :string, :limit => nil
      t.change "Notes", :string, :limit => nil
      t.change "Reg_Cd", :string, :limit => nil
      t.change "Legal", :string, :limit => nil
      t.change "FGO_Cd", :string, :limit => nil
      t.change "NTS_sheet", :string, :limit => nil
      t.change "Gator", :string, :limit => nil
    end

    change_table "surv_pl" do |t|
      t.change   "PLAN_NO", :string, :limit => nil
      t.change   "SIZE", :string, :limit => nil
      t.change   "SECONDARY_", :string, :limit => nil
      t.change   "STREET_LOC", :string, :limit => nil
      t.change   "OBJECT", :string, :limit => nil
      t.change   "FIELD_BOOK", :string, :limit => nil
      t.change   "BCGS", :string, :limit => nil
      t.change   "ISA_CODE", :string, :limit => nil
      t.change   "DIST_CODE", :string, :limit => nil
      t.change   "DIST_LOT", :string, :limit => nil
      t.change   "OLD_PLAN_N", :string, :limit => nil
      t.change   "PLAN_REG_N", :string, :limit => nil
      t.change   "LTO_CODE", :string, :limit => nil
      t.change   "COMPANY_NA", :string, :limit => nil
      t.change   "DFRPNUM", :string, :limit => nil
      t.change   "CROWN_LND_", :string, :limit => nil
      t.change   "CLSR_PLAN", :string, :limit => nil
    end

    change_table "nbc_loc1" do |t|
      t.change "OFF_NAME", :string, :limit => nil
      t.change "MAPSHEET", :string, :limit => nil
      t.change "LATITUDE", :string, :limit => nil
      t.change "LONGITUDE", :string, :limit => nil
      t.change "LATCALC", :string, :limit => nil
      t.change "LONCALC", :string, :limit => nil
      t.change "Loc_Num", :string, :limit => nil
      t.change "FEATURE_CODE", :string, :limit => nil
      t.change "Prov_Code", :string, :limit => nil
    end

    change_table "nbc_loc2" do |t|
      t.change "OFF_NAME", :string, :limit => nil
      t.change "MAPSHEET", :string, :limit => nil
      t.change "LATITUDE", :string, :limit => nil
      t.change "LONGITUDE", :string, :limit => nil
      t.change "LATCALC", :string, :limit => nil
      t.change "LONCALC", :string, :limit => nil
      t.change "Loc_Num", :string, :limit => nil
      t.change "FEATURE_CODE", :string, :limit => nil
      t.change "Prov_Code", :string, :limit => nil
    end

    change_table "nsurveyfiles1" do |t|
      t.change "Surv_File", :string, :limit => nil
      t.change "Proj_Num", :string, :limit => nil
      t.change "SSA_Num", :string, :limit => nil
      t.change "CR_File", :string, :limit => nil
      t.change "Strt_Date", :string, :limit => nil
      t.change "Cmpl_Date", :string, :limit => nil
      t.change "Proj_Man", :string, :limit => nil
      t.change "Dept_Sec", :string, :limit => nil
      t.change "Descript", :string, :limit => nil
      t.change "SSA_Amount", :string, :limit => nil
      t.change "Bulk_Num", :string, :limit => nil
      t.change "Fin_Code", :string, :limit => nil
      t.change "Dept_Abbr", :string, :limit => nil
      t.change "Active_File", :string, :limit => nil
      t.change "Remark", :string, :limit => nil
      t.change "Location_second", :string, :limit => nil
      t.change "Dept_Contact", :string, :limit => nil
      t.change "Dept_tel", :string, :limit => nil
      t.change "Loc_Num", :string, :limit => nil
      t.change "Strt_loc", :string, :limit => nil
      t.change "Object_Nm", :string, :limit => nil
      t.change "EDRM_Num", :string, :limit => nil
      t.change "Sigma", :string, :limit => nil
      t.change "EDRM_No", :string, :limit => nil
    end

    change_table "totscan" do |t|
      t.change "TIFF_FILE", :string, :limit => nil
      t.change "BCGS", :string, :limit => nil
      t.change "DRAWN_BY", :string, :limit => nil
      t.change "SURVEYOR", :string, :limit => nil
      t.change "SIZE", :string, :limit => nil
      t.change "SECTOR", :string, :limit => nil
      t.change "LOCATION", :string, :limit => nil
      t.change "PROJECT_NU", :string, :limit => nil
      t.change "TITLE", :string, :limit => nil
      t.change "PLAN", :string, :limit => nil
      t.change "STATUS", :string, :limit => nil
    end
  end

  def self.down
  end
end
