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

ActiveRecord::Schema.define(:version => 0) do

  create_table "BCLSLIST", :id => false, :force => true do |t|
    t.string "LAST_NAME",  :limit => 23
    t.string "FIRST_NAME", :limit => 20
    t.float  "MEMBER_NUM", :limit => nil
    t.string "STREET_ADD", :limit => 50
    t.string "CITY",       :limit => 40
    t.string "PROVINCE",   :limit => 5
    t.string "POSTAL_COD", :limit => 10
    t.string "TEL",        :limit => 15
    t.string "INITS",      :limit => 10
    t.string "COMPANY",    :limit => 60
    t.string "FAX",        :limit => 15
    t.string "TWN_BASED",  :limit => 35
  end

  create_table "Bldg_Doc", :id => false, :force => true do |t|
    t.float "KEYNUMFRMB", :limit => nil
    t.float "KEYNUMFRMD", :limit => nil
  end

  create_table "CSurv_fi", :id => false, :force => true do |t|
    t.float    "SURV_FILE",  :limit => nil
    t.string   "LOCATION_P", :limit => 47
    t.float    "PROJ_NUM",   :limit => nil
    t.float    "SSA_NUM",    :limit => nil
    t.string   "CR_FILE",    :limit => 15
    t.datetime "STRT_DATE"
    t.datetime "CMPL_DATE"
    t.string   "PROJ_MAN",   :limit => 3
    t.string   "DEPT_SEC",   :limit => 30
    t.string   "DESCRIPT",   :limit => 35
    t.float    "SSA_AMOUNT", :limit => nil
    t.float    "BULK_NUM",   :limit => nil
    t.string   "FIN_CODE",   :limit => 6
    t.string   "DEPT_ABBR",  :limit => 6
    t.string   "ACTIVE_FIL", :limit => 1
    t.string   "REMARK",     :limit => 28
    t.string   "LOCATION_S", :limit => 25
    t.string   "DEPT_CONTA", :limit => 15
    t.float    "DEPT_TEL",   :limit => nil
    t.float    "LOC_NUM",    :limit => nil
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
    t.string "FGO",    :limit => 13
    t.string "TYPE",   :limit => 11
    t.string "ABBREV", :limit => 15
    t.string "NAME",   :limit => 63
  end

  create_table "FGOU", :id => false, :force => true do |t|
    t.string "FGO",    :limit => 13
    t.string "FGOU",   :limit => 13
    t.string "ABBREV", :limit => 16
    t.string "NAME",   :limit => 70
  end

  create_table "Featcode", :id => false, :force => true do |t|
    t.string "FEAT_TYPE",  :limit => 36
    t.float  "FEATURE_CO", :limit => nil
    t.string "SYMBOL",     :limit => 15
    t.float  "COLUMN",     :limit => nil
    t.float  "ROW",        :limit => nil
    t.string "COLOUR",     :limit => 10
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
    t.float    "HM_KEYNUM",  :limit => nil
    t.float    "HB_FORKEY",  :limit => nil
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE",  :limit => 15
    t.string   "MEET_LOC",   :limit => 50
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Bldg", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM",  :limit => nil
    t.float    "HB_FORKEY",  :limit => nil
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE",  :limit => 15
    t.string   "MEET_LOC",   :limit => 50
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Code", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM",  :limit => nil
    t.float    "HB_FORKEY",  :limit => nil
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE",  :limit => 15
    t.string   "MEET_LOC",   :limit => 50
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Designation", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM",  :limit => nil
    t.float    "HB_FORKEY",  :limit => nil
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE",  :limit => 15
    t.string   "MEET_LOC",   :limit => 50
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Meets", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM",  :limit => nil
    t.float    "HB_FORKEY",  :limit => nil
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE",  :limit => 15
    t.string   "MEET_LOC",   :limit => 50
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
    t.float "KEYNUMFRMM", :limit => nil
    t.float "KEYNUMFRMD", :limit => nil
  end

  create_table "SURV_PL", :id => false, :force => true do |t|
    t.string   "PLAN_NO",    :limit => 10
    t.string   "SIZE",       :limit => 1
    t.float    "SURV_FI",    :limit => nil
    t.string   "SECONDARY_", :limit => 47
    t.string   "STREET_LOC", :limit => 30
    t.string   "OBJECT",     :limit => 30
    t.string   "FIELD_BOOK", :limit => 11
    t.string   "BCGS",       :limit => 8
    t.string   "ISA_CODE",   :limit => 2
    t.string   "DIST_CODE",  :limit => 2
    t.string   "DIST_LOT",   :limit => 10
    t.float    "LATITUDE",   :limit => nil
    t.float    "LONGITUDE",  :limit => nil
    t.float    "NORTH_UTM",  :limit => nil
    t.float    "EAST_UTM",   :limit => nil
    t.float    "UTM_ZONE",   :limit => nil
    t.string   "OLD_PLAN_N", :limit => 12
    t.text     "TITLE"
    t.datetime "PLAN_CLOSE"
    t.string   "PLAN_REG_N", :limit => 10
    t.string   "LTO_CODE",   :limit => 1
    t.float    "MEMBERNUM",  :limit => nil
    t.string   "COMPANY_NA", :limit => 30
    t.float    "RECNO",      :limit => nil
    t.string   "DFRPNUM",    :limit => 5
    t.float    "LOC_NUM",    :limit => nil
    t.float    "EDRM",       :limit => nil
    t.string   "CROWN_LND_", :limit => 12
    t.string   "CLSR_PLAN",  :limit => 10
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

  create_table "nSurveyFiles1", :id => false, :force => true do |t|
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
    t.string "TIFF_FILE",  :limit => 13
    t.string "BCGS",       :limit => 47
    t.string "DRAWN_BY",   :limit => 15
    t.string "SURVEYOR",   :limit => 28
    t.string "SIZE",       :limit => 14
    t.string "SECTOR",     :limit => 12
    t.string "LOCATION",   :limit => 55
    t.string "PROJECT_NU", :limit => 18
    t.string "TITLE",      :limit => 254
    t.string "PLAN",       :limit => 10
    t.string "STATUS",     :limit => 15
  end

end
