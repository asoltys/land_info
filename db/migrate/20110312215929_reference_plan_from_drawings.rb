class ReferencePlanFromDrawings < ActiveRecord::Migration
  def self.up
    change_table :drawings do |t|
      t.references :plan_file
    end

    execute "UPDATE drawings SET plan_file_id = (SELECT id FROM plan_files WHERE plan_number = drawings.plan)"
  end

  def self.down
    remove_column :drawings, :plan_file_id
  end
end
