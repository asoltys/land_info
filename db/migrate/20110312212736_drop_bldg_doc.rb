class DropBldgDoc < ActiveRecord::Migration
  def self.up
    drop_table :Bldg_Doc
  end

  def self.down
    create_table "Bldg_Doc", :id => false, :force => true do |t|
      t.float "KEYNUMFRMB"
      t.float "KEYNUMFRMD"
    end
  end
end
