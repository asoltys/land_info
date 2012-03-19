# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120319201349) do

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
    t.integer  "surveyor_id"
    t.integer  "location_id"
  end

  create_table "dwf_files", :force => true do |t|
    t.string  "file"
    t.string  "plan"
    t.string  "pdf"
    t.integer "plan_file_id"
  end

  create_table "features", :force => true do |t|
    t.string "type"
    t.string "code"
    t.string "symbol"
    t.string "column"
    t.string "row"
    t.string "colour"
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
    t.decimal "file_number",               :precision => 10, :scale => 0
    t.string  "location_number"
    t.string  "latitude_degrees"
    t.string  "latitude_minutes"
    t.string  "latitude_seconds"
    t.string  "longitude_degrees"
    t.string  "longitude_minutes"
    t.string  "longitude_seconds"
    t.string  "latitude_degrees_decimal"
    t.string  "longitude_degrees_decimal"
    t.string  "lot_number"
    t.string  "law_record"
    t.string  "returned"
    t.string  "district_company"
    t.string  "secondary_location"
    t.string  "marine_tif"
    t.string  "dfrp_number"
    t.string  "fgou_code"
    t.string  "province_file"
    t.string  "province_file2"
    t.string  "federal_file"
    t.string  "reservation_number"
    t.string  "reservation_use"
    t.string  "reservation_type"
    t.string  "oic_pc"
    t.string  "area_hectares"
    t.string  "area_acres"
    t.string  "expiry"
    t.string  "reservation_term"
    t.string  "cooperating_department"
    t.string  "pwc_customer"
    t.string  "provincial_contact"
    t.string  "federal_contact"
    t.text    "notes"
    t.string  "registration_code"
    t.text    "legal"
    t.string  "fgo_code"
    t.string  "nts_sheet"
    t.string  "gator"
    t.integer "location_id"
  end

  add_index "marine_files", ["expiry"], :name => "index_marine_files_on_expiry"
  add_index "marine_files", ["file_number"], :name => "index_marine_files_on_file_number"
  add_index "marine_files", ["location_id"], :name => "index_marine_files_on_location_id"

  create_table "organizational_units", :force => true do |t|
    t.string "fgo_code"
    t.string "code"
    t.string "abbreviation"
    t.string "name"
  end

  create_table "organizations", :force => true do |t|
    t.string "code"
    t.string "type"
    t.string "abbreviation"
    t.string "name"
  end

  create_table "plan_files", :force => true do |t|
    t.string  "plan_number"
    t.string  "size"
    t.string  "survey_file"
    t.string  "secondary_location"
    t.string  "street_location"
    t.string  "object"
    t.string  "field_book"
    t.string  "bcgs"
    t.string  "isa_code"
    t.string  "district_code"
    t.string  "district_lot"
    t.string  "latitude"
    t.string  "longitude"
    t.string  "north_utm"
    t.string  "east_utm"
    t.string  "utm_zone"
    t.string  "old_plan_number"
    t.string  "title"
    t.string  "plan_close"
    t.string  "plan_registration_number"
    t.string  "lto_code"
    t.string  "member_number"
    t.string  "company_name"
    t.string  "record_number"
    t.string  "dfrp_number"
    t.string  "location_number"
    t.string  "edrm_number"
    t.string  "crown_land_plan_number"
    t.string  "clsr_plan"
    t.integer "location_id"
    t.integer "survey_file_id"
  end

  add_index "plan_files", ["location_id"], :name => "index_plan_files_on_location_id"
  add_index "plan_files", ["plan_number"], :name => "index_plan_files_on_plan_number"
  add_index "plan_files", ["title"], :name => "index_plan_files_on_title"

  create_table "provinces", :force => true do |t|
    t.string "number"
    t.string "abbreviation"
    t.string "name"
  end

  create_table "regions", :force => true do |t|
    t.string "number"
    t.string "code"
  end

  create_table "survey_files", :force => true do |t|
    t.decimal "survey_file",             :precision => 10, :scale => 0
    t.string  "project_number"
    t.string  "ssa_number"
    t.string  "cr_file"
    t.date    "start_date"
    t.date    "completion_date"
    t.string  "project_manager"
    t.string  "department_section"
    t.text    "description"
    t.string  "ssa_amount"
    t.string  "bulk_number"
    t.string  "finance_code"
    t.string  "department_abbreviation"
    t.boolean "active"
    t.string  "remark"
    t.string  "location_second"
    t.string  "department_contact"
    t.string  "department_telephone"
    t.string  "location_number"
    t.string  "start_location"
    t.string  "object_number"
    t.string  "edrm_number"
    t.string  "sigma_number"
    t.integer "location_id"
  end

  add_index "survey_files", ["location_id"], :name => "index_survey_files_on_location_id"
  add_index "survey_files", ["survey_file"], :name => "index_survey_files_on_survey_file"

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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
