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

ActiveRecord::Schema.define(:version => 20110404035555) do

  create_table "drawings", :force => true do |t|
    t.string   "tiff_file"
    t.string   "bcgs"
    t.string   "drawn_by"
    t.string   "surveyor"
    t.string   "size"
    t.string   "sector"
    t.string   "location"
    t.string   "project_number"
    t.string   "title"
    t.string   "plan"
    t.string   "status"
    t.integer  "plan_file_id"
    t.string   "drawing_file_name"
    t.string   "drawing_content_type"
    t.integer  "drawing_file_size"
    t.datetime "drawing_updated_at"
  end

  create_table "dtproperties", :id => false, :force => true do |t|
    t.integer "id",                                            :null => false
    t.integer "objectid"
    t.string  "property", :limit => 64,                        :null => false
    t.string  "value"
    t.string  "uvalue"
    t.binary  "lvalue",   :limit => 2147483647
    t.integer "version",                        :default => 0, :null => false
  end

  create_table "dwf_file", :force => true do |t|
    t.string "DWF_FILE"
    t.string "Plan"
    t.string "PDF_FILE"
  end

  create_table "features", :force => true do |t|
    t.string "type"
    t.string "code"
    t.string "symbol"
    t.string "column"
    t.string "row"
    t.string "colour"
  end

  create_table "fgo", :force => true do |t|
    t.string "FGO"
    t.string "Type"
    t.string "Abbrev"
    t.string "Name"
  end

  create_table "fgou", :force => true do |t|
    t.string "FGO"
    t.string "FGOU"
    t.string "Abbrev"
    t.string "Name"
  end

  create_table "land_districts", :force => true do |t|
    t.string "name"
    t.string "code"
  end

  create_table "locations", :force => true do |t|
    t.string "name"
    t.string "mapsheet"
    t.string "latitude"
    t.string "longitude"
    t.string "latitude_calculation"
    t.string "longitude_calculation"
    t.string "location_number"
    t.string "feature_code"
    t.string "province_code"
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

  create_table "nsurveyfiles2", :force => true do |t|
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

  create_table "plan_files", :force => true do |t|
    t.string "plan_number"
    t.string "size"
    t.string "survey_file"
    t.string "secondary_location"
    t.string "street_location"
    t.string "object"
    t.string "field_book"
    t.string "bcgs"
    t.string "isa_code"
    t.string "district_code"
    t.string "district_lot"
    t.string "latitude"
    t.string "longitude"
    t.string "north_utm"
    t.string "east_utm"
    t.string "utm_zone"
    t.string "old_plan_number"
    t.string "title"
    t.string "plan_close"
    t.string "plan_registration_number"
    t.string "lto_code"
    t.string "member_number"
    t.string "company_name"
    t.string "record_number"
    t.string "dfrp_number"
    t.string "location_number"
    t.string "edrm_number"
    t.string "crown_land_plan_number"
    t.string "clsr_plan"
  end

  create_table "provinces", :force => true do |t|
    t.string "number"
    t.string "abbreviation"
    t.string "name"
  end

  create_table "region_bdy", :force => true do |t|
    t.string "Region_Nm"
    t.string "Region_Cd"
  end

  create_table "sf_tracking", :force => true do |t|
    t.string "SF_present"
    t.string "SF_tracked"
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

  create_table "survey_pln_title", :force => true do |t|
    t.string "LTO_Pln_No"
    t.string "PID_PIN"
    t.string "Cert_Number"
    t.string "Owner_on_Title"
  end

  create_table "surveyors", :force => true do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "member_number"
    t.string "street_address"
    t.string "city"
    t.string "province"
    t.string "postal_code"
    t.string "phone"
    t.string "initials"
    t.string "company"
    t.string "fax"
    t.string "town"
  end

end
