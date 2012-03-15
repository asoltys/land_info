module PlanFilesHelper
  def plan_file_drawings_column(record)
    if record.drawings.any?
      str = record.drawings.first(3).collect{|d| d.tiff_file}.join(', ')
      str += '...' if record.drawings.count > 3
      return str
    else
      active_scaffold_config.list.empty_field_text
    end
  end
end
