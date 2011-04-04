class CleanupLandDistricts < ActiveRecord::Migration
  def self.up
    transaction do
      drop_table :lnd_dstrct2

      rename_table :lnd_dstrct1, :land_districts

      change_table :land_districts do |t|
        t.rename "Land_District_Name", "name"
        t.rename "Land_District_Code", "code"
      end

      execute <<-SQL
        DELETE bad_rows.*
        FROM land_districts AS bad_rows
        INNER JOIN (
        SELECT 
          name, 
          code, 
          min(id) AS min_id
        FROM land_districts
        GROUP BY 
          name, 
          code
        HAVING count(*) > 1
        ) AS good_rows 
        ON  good_rows.name = bad_rows.name
        AND good_rows.code = bad_rows.code
        AND good_rows.min_id <> bad_rows.id
      SQL
    end
  end

  def self.down
    transaction do
      change_table :land_districts do |t|
        t.rename "name", "Land_District_Name"
        t.rename "code", "Land_District_Code"
      end

      rename_table :land_districts, :lnd_dstrct1

      create_table "lnd_dstrct2" do |t|
        t.string "Land_District_Name"
        t.string "Land_District_Code"
      end
    end
  end
end
