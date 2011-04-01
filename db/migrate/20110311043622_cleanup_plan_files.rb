class CleanupPlanFiles < ActiveRecord::Migration
  def self.up
    transaction do
      rename_table :surv_pl, :plan_files

      change_table :plan_files do |t|
        if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
          t.rename "Size", "size"
          t.rename "Street_Location", "street_location"
          t.rename "Secondary_Location", "secondary_location"
          t.rename "Object", "object"
          t.rename "Field_Book", "field_book"
          t.rename "BCGS", "bcgs"
          t.rename "ISA_Code", "isa_code"
          t.rename "Latitude", "latitude"
          t.rename "Longitude", "longitude"
          t.rename "North_UTM", "north_utm"
          t.rename "East_UTM", "east_utm"
          t.rename "UTM_Zone", "utm_zone"
          t.rename "Title", "title"
          t.rename "Plan_Close", "plan_close"
          t.rename "LTO_Code", "lto_code"
          t.rename "Company_Name", "company_name"
          t.rename "CLSR_Plan", "clsr_plan"
        end

        t.rename "Surv_Fi", "survey_file"
        t.rename "Plan_No", "plan_number"
        t.rename "Dist_Code", "district_code"
        t.rename "Dist_Lot", "district_lot"
        t.rename "Old_Plan_No", "old_plan_number"
        t.rename "Plan_Reg_No", "plan_registration_number"
        t.rename "membernum", "member_number"
        t.rename "RecNo", "record_number"
        t.rename "DFRPNum", "dfrp_number"
        t.rename "Loc_Num", "location_number"
        t.rename "EDRM", "edrm_number"
        t.rename "Crown_Lnd_Plan_No", "crown_land_plan_number"
      end
    end
  end

  def self.down
    transaction do
      change_table :plan_files do |t|
        if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
          t.rename "size", "Size"
          t.rename "street_location", "Street_Location"
          t.rename "secondary_location", "Secondary_Location"
          t.rename "object", "Object"
          t.rename "field_book", "Field_Book"
          t.rename "bcgs", "BCGS"
          t.rename "isa_code", "ISA_Code"
          t.rename "latitude", "Latitude"
          t.rename "longitude", "Longitude"
          t.rename "north_utm", "North_UTM"
          t.rename "east_utm", "East_UTM"
          t.rename "utm_zone", "UTM_Zone"
          t.rename "title", "Title"
          t.rename "plan_close", "Plan_Close"
          t.rename "lto_code", "LTO_Code"
          t.rename "company_name", "Company_Name"
          t.rename "clsr_plan", "CLSR_Plan"
        end

        t.rename "survey_file", "Surv_Fi"
        t.rename "plan_number", "Plan_No"
        t.rename "district_code", "Dist_Code"
        t.rename "district_lot", "Dist_Lot"
        t.rename "old_plan_number", "Old_Plan_No"
        t.rename "plan_registration_number", "Plan_Reg_No"
        t.rename "member_number", "membernum"
        t.rename "record_number", "RecNo"
        t.rename "dfrp_number", "DFRPNum"
        t.rename "location_number", "Loc_Num"
        t.rename "edrm_number", "EDRM"
        t.rename "crown_land_plan_number", "Crown_Lnd_Plan_No"
      end

      rename_table :plan_files, :surv_pl
    end
  end
end
