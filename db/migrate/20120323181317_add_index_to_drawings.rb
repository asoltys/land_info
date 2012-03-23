class AddIndexToDrawings < ActiveRecord::Migration
  def change
    add_index :drawings, :file_name
  end
end
