class RemoveDrawingsAttachment < ActiveRecord::Migration
  def change
    drop_attached_file :drawings, :drawing
  end
end
