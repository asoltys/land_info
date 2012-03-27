class ChangeDrawingsTitleToDescription < ActiveRecord::Migration
  def change
    change_column :drawings, :title, :text
    rename_column :drawings, :title, :description
    add_index :drawings, :description, :length => 40
  end
end
