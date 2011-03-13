class RemoveVarColumns < ActiveRecord::Migration
  def self.up
    [:DWF_file, :Featcode1, :Featcode2, :Lnd_Dstrct1, :Lnd_Dstrct2, :nBC_LOC1, :nBC_LOC2].each do |i|
      change_table i do |t|
        t.remove "File_or_Plan_var"
        t.remove "File_Record_var"
        t.remove "Surveyor_Num_var"
        t.remove "Location_var"
        t.remove "File_var"
        t.remove "Pln_Num_Var"
        t.remove "LTO_Pln_Num_Var"
        t.remove "sLoc_Var"
        t.remove "iLoc_Var"
      end
    end
  end

  def self.down
    [:DWF_file, :Featcode1, :Featcode2, :Lnd_Dstrct1, :Lnd_Dstrct2, :nBC_LOC1, :nBC_LOC2].each do |i|
      change_table i do |t|
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
    end
  end
end
