module PlanFilesHelper
  def plan_file_drawings_column(record)
    if record.drawings.any?
      str = record.drawings.first(3).collect{|d| d.file_name}.join(', ')
      str += '...' if record.drawings.count > 3
      return str
    else
      active_scaffold_config.list.empty_field_text
    end
  end

  def plan_file_location_id_form_column(record, options)
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

  def plan_file_survey_file_id_form_column(record, options)
    if record.survey_file.nil?
      value = ''
    else
      value = record.survey_file.survey_file
    end

    str = autocomplete_field_tag( 
      'survey_file', 
      '', 
      autocomplete_survey_file_survey_file_survey_files_path, 
      :value => value, 
      :id_element => '#record_survey_file_id'
    )

    str += hidden_field :record, :location_id
  end
end
