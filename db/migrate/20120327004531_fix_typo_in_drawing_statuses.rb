class FixTypoInDrawingStatuses < ActiveRecord::Migration
  def change
    execute <<-SQL
      UPDATE drawings SET status = 'Re-scanned' WHERE status = 'Re-Scaned'
    SQL
  end
end
