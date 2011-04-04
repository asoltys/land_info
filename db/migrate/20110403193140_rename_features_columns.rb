class RenameFeaturesColumns < ActiveRecord::Migration
  def self.up
    change_table "features" do |t|
      t.rename "FEAT_TYPE", "type"
      t.rename "FEATURE_CO", "code"
      t.rename "SYMBOL", "symbol"
      t.rename "COLUMN", "column"
      t.rename "ROW", "row"
      t.rename "COLOUR", "colour"
    end
  end

  def self.down
    change_table "features" do |t|
      t.rename "type", "FEAT_TYPE"
      t.rename "code", "FEATURE_CO"
      t.rename "symbol", "SYMBOL"
      t.rename "column", "COLUMN"
      t.rename "row", "ROW"
      t.rename "colour", "COLOUR"
    end
  end
end
