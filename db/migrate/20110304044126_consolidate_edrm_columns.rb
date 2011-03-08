class ConsolidateEdrmColumns < ActiveRecord::Migration
  def self.up
    SurveyFile.where(:edrm_number => nil).each{|f| f.edrm_number = f.EDRM_No; f.save}
    remove_column :survey_files, :EDRM_No
  end

  def self.down
    add_column :survey_files, :EDRM_No, :string
  end
end
