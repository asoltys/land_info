class CleanupDwfFiles < ActiveRecord::Migration
  def self.up
    rename_table :dwf_file, :dwf_files

    change_table :dwf_files do |t|
      t.rename "DWF_FILE", "file"
      t.rename "Plan", "plan"
      t.rename "PDF_FILE", "pdf"
    end
  end

  def self.down
    rename_table :dwf_files, :dwf_file
  end
end
