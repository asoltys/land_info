class CleanupBclslist < ActiveRecord::Migration
  def self.up
    transaction do
      rename_table :bclslist, :surveyors

      change_table "surveyors" do |t|
        t.rename "LAST_NAME", "last_name"
        t.rename "FIRST_NAME", "first_name"
        t.rename "MEMBER_NUM", "member_number"
        t.rename "STREET_ADD", "street_address"
        t.rename "CITY", "city"
        t.rename "PROVINCE", "province"
        t.rename "POSTAL_COD", "postal_code"
        t.rename "tel", "phone"
        t.rename "Inits", "initials"
        t.rename "Company", "company"
        t.rename "fax", "fax"
        t.rename "Twn_based", "town"
      end
    end
  end

  def self.down
    transaction do
      change_table "surveyors" do |t|
        t.rename "last_name", "LAST_NAME"
        t.rename "first_name", "FIRST_NAME"
        t.rename "member_number", "MEMBER_NUM"
        t.rename "street_address", "STREET_ADD"
        t.rename "city", "CITY"
        t.rename "province", "PROVINCE"
        t.rename "postal_code", "POSTAL_COD"
        t.rename "phone", "tel"
        t.rename "initials", "Inits"
        t.rename "company", "Company"
        t.rename "fax", "fax"
        t.rename "town", "Twn_based"
      end

      rename_table :surveyors, :bclslist
    end
  end
end
