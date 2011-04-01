class CleanupTotscan < ActiveRecord::Migration
  def self.up
    transaction do
      rename_table :totscan, :drawings

      change_table :drawings do |t|
        if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
          t.rename "TIFF_FILE", "tiff_file"
          t.rename "BCGS", "bcgs"
          t.rename "DRAWN_BY", "drawn_by"
          t.rename "SURVEYOR", "surveyor"
          t.rename "SIZE", "size"
          t.rename "SECTOR", "sector"
          t.rename "LOCATION", "location"
          t.rename "TITLE", "title"
          t.rename "Plan", "plan"
          t.rename "Status", "status"
        end
        t.rename "PROJECT_NU", "project_number"
      end
    end
  end

  def self.down
    transaction do
      change_table :drawings do |t|
        if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
          t.rename "tiff_file", "TIFF_FILE"
          t.rename "bcgs", "BCGS"
          t.rename "drawn_by", "DRAWN_BY"
          t.rename "surveyor", "SURVEYOR"
          t.rename "size", "SIZE"
          t.rename "sector", "SECTOR"
          t.rename "location", "LOCATION"
          t.rename "title", "TITLE"
          t.rename "plan", "Plan"
          t.rename "status", "Status"
        end
        t.rename "project_number", "PROJECT_NU"
      end

      rename_table :drawings, :totscan
    end
  end
end
