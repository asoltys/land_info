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

ActiveRecord::Schema.define(:version => 20110312212736) do

  create_table "CSurv_fi", :id => false, :force => true do |t|
    t.float    "SURV_FILE"
    t.string   "LOCATION_P"
    t.float    "PROJ_NUM"
    t.float    "SSA_NUM"
    t.string   "CR_FILE"
    t.datetime "STRT_DATE"
    t.datetime "CMPL_DATE"
    t.string   "PROJ_MAN"
    t.string   "DEPT_SEC"
    t.string   "DESCRIPT"
    t.float    "SSA_AMOUNT"
    t.float    "BULK_NUM"
    t.string   "FIN_CODE"
    t.string   "DEPT_ABBR"
    t.string   "ACTIVE_FIL"
    t.string   "REMARK"
    t.string   "LOCATION_S"
    t.string   "DEPT_CONTA"
    t.float    "DEPT_TEL"
    t.float    "LOC_NUM"
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
    t.string "FEAT_TYPE"
    t.float  "FEATURE_CO"
    t.string "SYMBOL"
    t.float  "COLUMN"
    t.float  "ROW"
    t.string "COLOUR"
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
    t.float    "HM_KEYNUM"
    t.float    "HB_FORKEY"
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Bldg", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM"
    t.float    "HB_FORKEY"
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Code", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM"
    t.float    "HB_FORKEY"
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Designation", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM"
    t.float    "HB_FORKEY"
    t.datetime "MEET_DATE"
    t.string   "MEET_TYPE"
    t.string   "MEET_LOC"
    t.text     "MEET_SUBJE"
  end

  create_table "Heritage_Meets", :id => false, :force => true do |t|
    t.float    "HM_KEYNUM"
    t.float    "HB_FORKEY"
    t.datetime "MEET_DATE"
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

  create_table "Meet_Doc", :id => false, :force => true do |t|
    t.float "KEYNUMFRMM"
    t.float "KEYNUMFRMD"
  end

  create_table "marine_files", :force => true do |t|
    t.string "file_number"
    t.string "location_number"
    t.string "latitude_degrees"
    t.string "latitude_minutes"
    t.string "latitude_seconds"
    t.string "longitude_degrees"
    t.string "longitude_minutes"
    t.string "longitude_seconds"
    t.string "latitude_degrees_decimal"
    t.string "longitude_degrees_decimal"
    t.string "lot_number"
    t.string "law_record"
    t.string "Returned"
    t.string "district_company"
    t.string "secondary_location"
    t.string "Marine_tif"
    t.string "dfrp_number"
    t.string "FGOU_Cd"
    t.string "province_file"
    t.string "Prv_File"
    t.string "FED_File"
    t.string "reservation_number"
    t.string "reservation_use"
    t.string "reservation_type"
    t.string "OIC_PC"
    t.string "area_hectares"
    t.string "area_acres"
    t.string "Expiry"
    t.string "reservation_term"
    t.string "cooperating_department"
    t.string "PWC_Cust"
    t.string "provincial_contact"
    t.string "federal_contact"
    t.string "Notes"
    t.string "registration_code"
    t.string "Legal"
    t.string "fgo_code"
    t.string "NTS_sheet"
    t.string "Gator"
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

  create_table "plan_files", :force => true do |t|
    t.string   "plan_number"
    t.string   "SIZE"
    t.float    "survey_file"
    t.string   "secondary"
    t.string   "street_location"
    t.string   "OBJECT"
    t.string   "FIELD_BOOK"
    t.string   "BCGS"
    t.string   "ISA_CODE"
    t.string   "district_code"
    t.string   "district_lot"
    t.float    "LATITUDE"
    t.float    "LONGITUDE"
    t.float    "NORTH_UTM"
    t.float    "EAST_UTM"
    t.float    "UTM_ZONE"
    t.string   "old_plan_number"
    t.text     "TITLE"
    t.datetime "PLAN_CLOSE"
    t.string   "plan_registration_number"
    t.string   "LTO_CODE"
    t.float    "member_number"
    t.string   "company_name"
    t.float    "record_number"
    t.string   "dfrp_number"
    t.float    "location_number"
    t.float    "edrm_number"
    t.string   "crown_land"
    t.string   "CLSR_PLAN"
  end

  create_table "survey_files", :force => true do |t|
    t.string "survey_file"
    t.string "project_number"
    t.string "ssa_number"
    t.string "cr_file"
    t.string "start_date"
    t.string "completion_date"
    t.string "project_manager"
    t.string "department_section"
    t.string "description"
    t.string "ssa_amount"
    t.string "bulk_number"
    t.string "finance_code"
    t.string "department_abbreviation"
    t.string "active"
    t.string "remark"
    t.string "location_second"
    t.string "department_contact"
    t.string "department_telephone"
    t.string "location_number"
    t.string "start_location"
    t.string "object_number"
    t.string "edrm_number"
    t.string "sigma_number"
  end

  create_table "surveyors", :force => true do |t|
    t.string "LAST_NAME"
    t.string "FIRST_NAME"
    t.float  "member_number"
    t.string "address"
    t.string "CITY"
    t.string "PROVINCE"
    t.string "postal_code"
    t.string "phone"
    t.string "initials"
    t.string "company_name"
    t.string "FAX"
    t.string "town"
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
