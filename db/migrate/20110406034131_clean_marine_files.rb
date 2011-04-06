class CleanMarineFiles < ActiveRecord::Migration
  def self.up
    change_table :marine_files do |t|
      if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
        t.rename "Returned", "returned"
        t.rename "Marine_tif", "marine_tif"
        t.rename "OIC_PC", "oic_pc"
        t.rename "Expiry", "expiry"
        t.rename "Notes", "notes"
        t.rename "Legal", "legal"
        t.rename "NTS_sheet", "nts_sheet"
        t.rename "Gator", "gator"
      end
      t.rename "Prv_File", "province_file2"
      t.rename "PWC_Cust", "pwc_customer"
      t.rename "FED_File", "federal_file"
      t.rename "FGOU_Cd", "fgou_code"
    end
  end

  def self.down
    change_table :marine_files do |t|
      if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
        t.rename "returned", "Returned"
        t.rename "marine_tif", "Marine_tif"
        t.rename "oic_pc", "OIC_PC"
        t.rename "expiry", "Expiry"
        t.rename "notes", "Notes"
        t.rename "legal", "Legal"
        t.rename "nts_sheet", "NTS_sheet"
        t.rename "gator", "Gator"
      end
      t.rename "province_file2", "Prv_File"
      t.rename "pwc_customer", "PWC_Cust"
      t.rename "federal_file", "FED_File"
      t.rename "fgou_code", "FGOU_Cd"
    end
  end
end
