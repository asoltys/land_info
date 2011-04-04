class CleanupRegions < ActiveRecord::Migration
  def self.up
    transaction do
      rename_table :region_bdy, :regions

      change_table "regions" do |t|
        t.rename "Region_Nm", "number"
        t.rename "Region_Cd", "code"
      end
    end
  end

  def self.down
    transaction do
      change_table "regions" do |t|
        t.rename "number", "Region_Nm"
        t.rename "code", "Region_Cd"
      end

      rename_table :regions, :region_bdy
    end
  end
end
