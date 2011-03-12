class CleanupBclslist < ActiveRecord::Migration
  def self.up
    rename_table :BCLSLIST, :surveyors

    change_table "surveyors" do |t|
      t.rename "MEMBER_NUM", "member_number"
      t.rename "STREET_ADD", "address"
      t.rename "POSTAL_COD", "postal_code"
      t.rename "TEL", "phone"
      t.rename "INITS", "initials"
      t.rename "COMPANY", "company_name"
      t.rename "TWN_BASED", "town"
    end

    add_column :surveyors, :id, :primary_key
  end

  def self.down
    remove_column :surveyors, :id

    change_table "surveyors" do |t|
      t.rename "member_number", "MEMBER_NUM"
      t.rename "address", "STREET_ADD"
      t.rename "postal_code", "POSTAL_COD"
      t.rename "phone", "TEL"
      t.rename "initials", "INITS"
      t.rename "company_name", "COMPANY"
      t.rename "town", "TWN_BASED"
    end

    rename_table :surveyors, :BCLSLIST
  end
end
