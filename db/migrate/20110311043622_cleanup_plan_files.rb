class CleanupPlanFiles < ActiveRecord::Migration
  def self.up
    rename_table :SURV_PL, :plan_files

    change_table :plan_files do |t|
      t.rename "PLAN_NO", "plan_number"
      t.rename "SURV_FI", "survey_file"
      t.rename "SECONDARY_", "secondary"
      t.rename "STREET_LOC", "street_location"
      t.rename "DIST_CODE", "district_code"
      t.rename "DIST_LOT", "district_lot"
      t.rename "OLD_PLAN_N", "old_plan_number"
      t.rename "PLAN_REG_N", "plan_registration_number"
      t.rename "MEMBERNUM", "member_number"
      t.rename "COMPANY_NA", "company_name "
      t.rename "RECNO", "record_number"
      t.rename "DFRPNUM", "dfrp_number"
      t.rename "LOC_NUM", "location_number"
      t.rename "EDRM", "edrm_number"
      t.rename "CROWN_LND_", "crown_land"
    end
  end

  def self.down
    change_table :plan_files do |t|
      t.rename "plan_number", "PLAN_NO"
      t.rename "survey_file", "SURV_FI"
      t.rename "secondary", "SECONDARY_"
      t.rename "street_location", "STREET_LOC"
      t.rename "district_code", "DIST_CODE"
      t.rename "district_lot", "DIST_LOT"
      t.rename "old_plan_number", "OLD_PLAN_N"
      t.rename "plan_registration_number", "PLAN_REG_N"
      t.rename "member_number", "MEMBERNUM"
      t.rename "company_name ", "COMPANY_NA"
      t.rename "record_number", "RECNO"
      t.rename "dfrp_number", "DFRPNUM"
      t.rename "location_number", "LOC_NUM"
      t.rename "edrm_number", "EDRM"
      t.rename "crown_land", "CROWN_LND_"
    end

    rename_table :plan_files, :SURV_PL
  end
end
