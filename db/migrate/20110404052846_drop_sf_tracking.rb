class DropSfTracking < ActiveRecord::Migration
  def self.up
    drop_table :sf_tracking
  end

  def self.down
    create_table "sf_tracking" do |t|
      t.string "SF_present"
      t.string "SF_tracked"
    end
  end
end
