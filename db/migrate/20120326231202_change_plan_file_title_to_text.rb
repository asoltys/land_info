class ChangePlanFileTitleToText < ActiveRecord::Migration
  def change
    remove_index :plan_files, :title
    change_column :plan_files, :title, :text
    add_index :plan_files, :title, :length => 20
  end
end
