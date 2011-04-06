class RenameFeaturesColumns < ActiveRecord::Migration
  def self.up
    change_table "features" do |t|
      if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
        t.rename "SYMBOL", "symbol"
        t.rename "COLUMN", "column"
        t.rename "ROW", "row"
        t.rename "COLOUR", "colour"
      end
      t.rename "FEAT_TYPE", "type"
      t.rename "FEATURE_CO", "code"
    end
  end

  def self.down
    change_table "features" do |t|
      if ActiveRecord::Base.connection.adapter_name != 'MSSQL'
        t.rename "symbol", "SYMBOL"
        t.rename "column", "COLUMN"
        t.rename "row", "ROW"
        t.rename "colour", "COLOUR"
      end
      t.rename "type", "FEAT_TYPE"
      t.rename "code", "FEATURE_CO"
    end
  end
end
