module SurveyFilesHelper
  def survey_file_plan_files_column(record, options)
    if record.plan_files.any?
      str = record.plan_files.first(3).collect{|p| p.plan_number}.join(', ')
      str += '...' if record.plan_files.count > 3
      return str
    else
      active_scaffold_config.list.empty_field_text
    end
  end

  def survey_file_survey_file_column(record, options)
    record.survey_file_to_two_decimal_places
  end

  def survey_file_survey_file_form_column(record, options)
    text_field :record, :survey_file, :value => number_with_precision(SurveyFile.maximum("survey_file").floor + 1, :precision => 2)
  end

  def survey_file_location_id_form_column(record, options)
    if record.location.nil?
      value = ''
    else
      value = record.location.name
    end

    str = autocomplete_field_tag( 
      'location', 
      '', 
      autocomplete_location_name_locations_path, 
      :value => value, 
      :id_element => '#record_location_id'
    )

    str += hidden_field :record, :location_id
  end
end
