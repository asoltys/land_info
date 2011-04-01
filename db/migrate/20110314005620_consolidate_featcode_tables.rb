class ConsolidateFeatcodeTables < ActiveRecord::Migration
  def self.up
    rename_table :featcode1, :features
    drop_table :featcode2
  end

  def self.down
    create_table "featcode2", :force => true do |t|
      t.string "FEAT_TYPE"
      t.string "FEATURE_CO"
      t.string "SYMBOL"
      t.string "COLUMN"
      t.string "ROW"
      t.string "COLOUR"
    end

    rename_table :featcode1, :features
  end
end
