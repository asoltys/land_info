module SurveyFilesHelper
  def survey_file_plan_files_column(record)
    if record.plan_files.any?
      str = record.plan_files.first(3).collect{|p| p.plan_number}.join(', ')
      str += '...' if record.plan_files.count > 3
      return str
    else
      active_scaffold_config.list.empty_field_text
    end
  end

  def survey_file_survey_file_form_column(record, options)
    text_field :record, :survey_file, :value => SurveyFile.last.survey_file.to_i + 1
  end
end
