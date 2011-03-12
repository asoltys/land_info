class CleanupTotscan < ActiveRecord::Migration
  def self.up
    rename_table :totscan, :drawings
    add_column :drawings, :id, :primary_key
  end

  def self.down
    remove_column :drawings, :id
    rename_table :drawings, :totscan
  end
end
