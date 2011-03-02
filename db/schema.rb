# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110301214331) do

  create_table "BCLSLIST", :id => false, :force => true do |t|
    t.string  "LAST_NAME"
    t.string  "FIRST_NAME"
    t.decimal "MEMBER_NUM"
    t.string  "STREET_ADD"
    t.string  "CITY"
    t.string  "PROVINCE"
    t.string  "POSTAL_COD"
    t.string  "TEL"
    t.string  "INITS"
    t.string  "COMPANY"
    t.string  "FAX"
    t.string  "TWN_BASED"
  end

  create_table "Bldg_Doc", :id => false, :force => true do |t|
    t.decimal "KEYNUMFRMB"
    t.decimal "KEYNUMFRMD"
  end

  create_table "CSurv_fi", :id => false, :force => true do |t|
    t.decimal  "SURV_FILE"
    t.string   "LOCATION_P"
    t.decimal  "PROJ_NUM"
    t.decimal  "SSA_NUM"
    t.string   "CR_FILE"
    t.datetime "STRT_DATE",  :limit => 16
    t.datetime "CMPL_DATE",  :limit => 16
    t.string   "PROJ_MAN"
    t.string   "DEPT_SEC"
    t.string   "DESCRIPT"
    t.decimal  "SSA_AMOUNT"
    t.decimal  "BULK_NUM"
    t.string   "FIN_CODE"
    t.string   "DEPT_ABBR"
    t.string   "ACTIVE_FIL"
    t.string   "REMARK"
    t.string   "LOCATION_S"
    t.string   "DEPT_CONTA"
    t.decimal  "DEPT_TEL"
    t.decimal  "LOC_NUM"
  end

  create_table "DWF_file", :id => false, :force => true do |t|
    t.string "DWF_FILE"
    t.string "Plan"
    t.string "PDF_FILE"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "FGO", :id => false, :force => true do |t|
    t.string "FGO"
    t.string "TYPE"
    t.string "ABBREV"
    t.string "NAME"
  end

  create_table "FGOU", :id => false, :force => true do |t|
    t.string "FGO"
    t.string "FGOU"
    t.string "ABBREV"
    t.string "NAME"
  end

  create_table "Featcode", :id => false, :force => true do |t|
    t.string  "FEAT_TYPE"
    t.decimal "FEATURE_CO"
    t.string  "SYMBOL"
    t.decimal "COLUMN"
    t.decimal "ROW"
    t.string  "COLOUR"
  end

  create_table "Featcode1", :id => false, :force => true do |t|
    t.string "FEAT_TYPE"
    t.string "FEATURE_CO"
    t.string "SYMBOL"
    t.string "COLUMN"
    t.string "ROW"
    t.string "COLOUR"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "Featcode2", :id => false, :force => true do |t|
    t.string "FEAT_TYPE"
    t.string "FEATURE_CO"
    t.string "SYMBOL"
    t.string "COLUMN"
    t.string "ROW"
    t.string "COLOUR"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "HERITAGE", :id => false, :force => true do |t|
    t.decimal  "HM_KEYNUM"
    t.decimal  "HB_FORKEY"
    t.datetime "MEET_DATE",  :limit => 16
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Bldg", :id => false, :force => true do |t|
    t.decimal  "HM_KEYNUM"
    t.decimal  "HB_FORKEY"
    t.datetime "MEET_DATE",  :limit => 16
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Code", :id => false, :force => true do |t|
    t.decimal  "HM_KEYNUM"
    t.decimal  "HB_FORKEY"
    t.datetime "MEET_DATE",  :limit => 16
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Designation", :id => false, :force => true do |t|
    t.decimal  "HM_KEYNUM"
    t.decimal  "HB_FORKEY"
    t.datetime "MEET_DATE",  :limit => 16
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Meets", :id => false, :force => true do |t|
    t.decimal  "HM_KEYNUM"
    t.decimal  "HB_FORKEY"
    t.datetime "MEET_DATE",  :limit => 16
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Lnd_Dstrct1", :id => false, :force => true do |t|
    t.string "Land_District_Name"
    t.string "Land_District_Code"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "Lnd_Dstrct2", :id => false, :force => true do |t|
    t.string "Land_District_Name"
    t.string "Land_District_Code"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "MarineFiles", :id => false, :force => true do |t|
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
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "Meet_Doc", :id => false, :force => true do |t|
    t.decimal "KEYNUMFRMM"
    t.decimal "KEYNUMFRMD"
  end

  create_table "SURV_PL", :id => false, :force => true do |t|
    t.string   "PLAN_NO"
    t.string   "SIZE"
    t.decimal  "SURV_FI"
    t.string   "SECONDARY_"
    t.string   "STREET_LOC"
    t.string   "OBJECT"
    t.string   "FIELD_BOOK"
    t.string   "BCGS"
    t.string   "ISA_CODE"
    t.string   "DIST_CODE"
    t.string   "DIST_LOT"
    t.decimal  "LATITUDE"
    t.decimal  "LONGITUDE"
    t.decimal  "NORTH_UTM"
    t.decimal  "EAST_UTM"
    t.decimal  "UTM_ZONE"
    t.string   "OLD_PLAN_N"
    t.text     "TITLE"
    t.datetime "PLAN_CLOSE", :limit => 16
    t.string   "PLAN_REG_N"
    t.string   "LTO_CODE"
    t.decimal  "MEMBERNUM"
    t.string   "COMPANY_NA"
    t.decimal  "RECNO"
    t.string   "DFRPNUM"
    t.decimal  "LOC_NUM"
    t.decimal  "EDRM"
    t.string   "CROWN_LND_"
    t.string   "CLSR_PLAN"
  end

  create_table "dtproperties", :force => true do |t|
    t.integer "objectid", :limit => 10
    t.string  "property", :limit => 64,                :null => false
    t.string  "value"
    t.string  "uvalue"
    t.binary  "lvalue"
    t.integer "version",  :limit => 10, :default => 0, :null => false
  end

  create_table "nBC_LOC1", :id => false, :force => true do |t|
    t.string "OFF_NAME"
    t.string "MAPSHEET"
    t.string "LATITUDE"
    t.string "LONGITUDE"
    t.string "LATCALC"
    t.string "LONCALC"
    t.string "Loc_Num"
    t.string "FEATURE_CODE"
    t.string "Prov_Code"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "nBC_LOC2", :id => false, :force => true do |t|
    t.string "OFF_NAME"
    t.string "MAPSHEET"
    t.string "LATITUDE"
    t.string "LONGITUDE"
    t.string "LATCALC"
    t.string "LONCALC"
    t.string "Loc_Num"
    t.string "FEATURE_CODE"
    t.string "Prov_Code"
    t.string "File_or_Plan_var"
    t.string "File_Record_var"
    t.string "Surveyor_Num_var"
    t.string "Location_var"
    t.string "File_var"
    t.string "Pln_Num_Var"
    t.string "LTO_Pln_Num_Var"
    t.string "sLoc_Var"
    t.string "iLoc_Var"
  end

  create_table "survey_files", :force => true do |t|
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

  create_table "totscan", :id => false, :force => true do |t|
    t.string "TIFF_FILE"
    t.string "BCGS"
    t.string "DRAWN_BY"
    t.string "SURVEYOR"
    t.string "SIZE"
    t.string "SECTOR"
    t.string "LOCATION"
    t.string "PROJECT_NU"
    t.string "TITLE"
    t.string "PLAN"
    t.string "STATUS"
  end

end
