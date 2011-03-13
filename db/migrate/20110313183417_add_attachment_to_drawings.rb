class AddAttachmentToDrawings < ActiveRecord::Migration
  def self.up
    add_column :drawings, :drawing_file_name,    :string
    add_column :drawings, :drawing_content_type, :string
    add_column :drawings, :drawing_file_size,    :integer
    add_column :drawings, :drawing_updated_at,   :datetime
  end

  def self.down
    remove_column :drawings, :drawing_file_name
    remove_column :drawings, :drawing_content_type
    remove_column :drawings, :drawing_file_size
    remove_column :drawings, :drawing_updated_at
  end
end
