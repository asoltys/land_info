class AddMoreSearchIndexes < ActiveRecord::Migration
  def change
    add_index :survey_files, :edrm_number
    add_index :survey_files, :sigma_number
  end
end
