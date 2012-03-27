class RenamePlanTitleToDescription < ActiveRecord::Migration
  def change
    rename_column :plan_files, :title, :description
  end
end
