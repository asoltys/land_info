class ChangeDescriptionToText < ActiveRecord::Migration
  def up
    change_column :survey_files, :description, :text
  end

  def down
  end
end
