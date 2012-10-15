class AddNumericPlanNumberColumn < ActiveRecord::Migration
  def change
    add_column :plan_files, :plan_number_numeric, :decimal, :precision => 10, :scale => 2
  end
end
