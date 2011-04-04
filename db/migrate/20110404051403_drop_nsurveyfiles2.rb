class DropNsurveyfiles2 < ActiveRecord::Migration
  def self.up
    drop_table :nsurveyfiles2
  end

  def self.down
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
  end
end
