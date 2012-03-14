module SurveyFilesHelper
  def survey_file_plan_files_column(record)
    if record.plan_files.any?
      str = record.plan_files.first(3).collect{|p| p.plan_number}.join(', ')
      str += '...' if record.plan_files.count > 3
      return str
    else
      # This way there's something to turn into a link if there are no roles associated with this record yet.
      active_scaffold_config.list.empty_field_text
    end
  end
end
