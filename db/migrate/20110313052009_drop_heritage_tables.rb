class DropHeritageTables < ActiveRecord::Migration
  def self.up
    drop_table :HERITAGE
    drop_table :Heritage_Bldg
    drop_table :Heritage_Code
    drop_table :Heritage_Designation
    drop_table :Heritage_Meets
  end

  def self.down
    create_table "HERITAGE", :id => false, :force => true do |t|
      t.float    "HM_KEYNUM"
      t.float    "HB_FORKEY"
      t.datetime "MEET_DATE"
      t.string   "MEET_TYPE"
      t.string   "MEET_LOC"
      t.text     "MEET_SUBJE"
    end

    create_table "Heritage_Bldg", :id => false, :force => true do |t|
      t.float    "HM_KEYNUM"
      t.float    "HB_FORKEY"
      t.datetime "MEET_DATE"
      t.string   "MEET_TYPE"
      t.string   "MEET_LOC"
      t.text     "MEET_SUBJE"
    end

    create_table "Heritage_Code", :id => false, :force => true do |t|
      t.float    "HM_KEYNUM"
      t.float    "HB_FORKEY"
      t.datetime "MEET_DATE"
      t.string   "MEET_TYPE"
      t.string   "MEET_LOC"
      t.text     "MEET_SUBJE"
    end

    create_table "Heritage_Designation", :id => false, :force => true do |t|
      t.float    "HM_KEYNUM"
      t.float    "HB_FORKEY"
      t.datetime "MEET_DATE"
      t.string   "MEET_TYPE"
      t.string   "MEET_LOC"
      t.text     "MEET_SUBJE"
    end

    create_table "Heritage_Meets", :id => false, :force => true do |t|
      t.float    "HM_KEYNUM"
      t.float    "HB_FORKEY"
      t.datetime "MEET_DATE"
      t.string   "MEET_TYPE"
      t.string   "MEET_LOC"
      t.text     "MEET_SUBJE"
    end
  end
end
