class RenameSurveyFileColumns < ActiveRecord::Migration
  def self.up
    change_table "survey_files" do |t|
      t.rename "Surv_File", "survey_file"
      t.rename "Proj_Num", "project_number"
      t.rename "SSA_Num", "ssa_number"
      t.rename "CR_File", "cr_file"
      t.rename "Strt_Date", "start_date"
      t.rename "Cmpl_Date", "completion_date"
      t.rename "Proj_Man", "project_manager"
      t.rename "Dept_Sec", "department_section"
      t.rename "Descript", "description"
      t.rename "SSA_Amount", "ssa_amount"
      t.rename "Bulk_Num", "bulk_number"
      t.rename "Fin_Code", "finance_code"
      t.rename "Dept_Abbr", "department_abbreviation"
      t.rename "Active_File", "active"
      t.rename "Remark", "remark"
      t.rename "Location_second", "location_second"
      t.rename "Dept_Contact", "department_contact"
      t.rename "Dept_tel", "department_telephone"
      t.rename "Loc_Num", "location_number"
      t.rename "Strt_loc", "start_location"
      t.rename "Object_Nm", "object_number"
      t.rename "EDRM_Num", "edrm_number"
      t.rename "Sigma", "sigma_number"
    end
  end

  def self.down
    change_table "survey_files" do |t|
      t.rename "survey_file", "Surv_File"
      t.rename "project_number", "Proj_Num"
      t.rename "ssa_number", "SSA_Num"
      t.rename "cr_file", "CR_File"
      t.rename "start_date", "Strt_Date"
      t.rename "completion_date", "Cmpl_Date"
      t.rename "project_manager", "Proj_Man"
      t.rename "department_section", "Dept_Sec"
      t.rename "description", "Descript"
      t.rename "ssa_amount", "SSA_Amount"
      t.rename "bulk_number", "Bulk_Num"
      t.rename "finance_code", "Fin_Code"
      t.rename "department_abbreviation", "Dept_Abbr"
      t.rename "active", "Active_File"
      t.rename "remark", "Remark"
      t.rename "location_second", "Location_second"
      t.rename "department_contact", "Dept_Contact"
      t.rename "department_telephone", "Dept_tel"
      t.rename "location_number", "Loc_Num"
      t.rename "start_location", "Strt_loc"
      t.rename "object_number", "Object_Nm"
      t.rename "edrm_number", "EDRM_Num"
      t.rename "sigma_number", "Sigma"
    end
  end
end
