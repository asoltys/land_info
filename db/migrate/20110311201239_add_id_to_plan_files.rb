class AddIdToPlanFiles < ActiveRecord::Migration
  def self.up
    add_column :plan_files, :id, :primary_key
  end

  def self.down
    remove_column :plan_files, :id
  end
end
