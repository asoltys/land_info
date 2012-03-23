class AddIndexToDrawings < ActiveRecord::Migration
  def change
    add_index :drawings, :file_name
    add_index :drawings, :plan_file_id
  end
end
