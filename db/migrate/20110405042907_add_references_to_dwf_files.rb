class AddReferencesToDwfFiles < ActiveRecord::Migration
  def self.up
    transaction do
      change_table :dwf_files do |t|
        t.references :plan_file
      end

      execute "UPDATE dwf_files SET plan_file_id = (SELECT id FROM plan_files WHERE plan_files.plan_number = dwf_files.plan)"   
    end
  end

  def self.down
  end
end
