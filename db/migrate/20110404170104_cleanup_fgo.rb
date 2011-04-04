class CleanupFgo < ActiveRecord::Migration
  def self.up
    change_table "fgo" do |t|
      t.rename "FGO", "code"
      t.rename "Type", "type"
      t.rename "Abbrev", "abbreviation"
      t.rename "Name", "name"
    end

    change_table "fgou" do |t|
      t.rename "FGO", "fgo_code"
      t.rename "FGOU", "code"
      t.rename "Abbrev", "abbreviation"
      t.rename "Name", "name"
    end

    rename_table :fgo, :organizations
    rename_table :fgou, :organizational_units
  end

  def self.down
    rename_table :organizational_units, :fgou
    rename_table :organizations, :fgo

    change_table "fgou" do |t|
      t.rename "fgo_code", "FGO"
      t.rename "code", "FGOU"
      t.rename "abbreviation", "Abbrev"
      t.rename "name", "Name"
    end

    change_table "fgo" do |t|
      t.rename "code", "FGO"
      t.rename "type", "Type"
      t.rename "abbreviation", "Abbrev"
      t.rename "name", "Name"
    end
  end
end
