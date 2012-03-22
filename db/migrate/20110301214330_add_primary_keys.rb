class AddPrimaryKeys < ActiveRecord::Migration
  def self.up
      add_column :bclslist, :id, :primary_key
      add_column :dwf_file, :id, :primary_key
      add_column :featcode1, :id, :primary_key
      add_column :featcode2, :id, :primary_key
      add_column :fgo, :id, :primary_key
      add_column :fgou, :id, :primary_key
      add_column :lnd_dstrct1, :id, :primary_key
      add_column :lnd_dstrct2, :id, :primary_key
      add_column :marinefile, :id, :primary_key
      add_column :nbc_loc1, :id, :primary_key
      add_column :nbc_loc2, :id, :primary_key
      add_column :nsurveyfiles1, :id, :primary_key
      add_column :nsurveyfiles2, :id, :primary_key
      add_column :prov_codes1, :id, :primary_key
      add_column :prov_codes2, :id, :primary_key
      add_column :region_bdy, :id, :primary_key
      add_column :sf_tracking, :id, :primary_key
      add_column :surv_pl, :id, :primary_key
      add_column :survey_pln_title, :id, :primary_key
      add_column :totscan, :id, :primary_key
  end

  def self.down
  end
end
