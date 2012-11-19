module PlanFilesHelper
  def plan_file_drawings_column(record, options)
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

  def plan_file_location_id_column(record, options)
    record.location.name unless record.location.nil?
  end

  def plan_file_survey_file_id_column(record, options)
    if record.survey_file.nil?
      ''
    else
      record.survey_file.survey_file_to_two_decimal_places
    end
  end

  def plan_file_survey_file_id_form_column(record, options)
    if record.survey_file.nil?
      value = ''
    else
      value = record.survey_file.survey_file
    end

    autocomplete_field_tag( 
      'record[survey_file]', 
      '', 
      autocomplete_survey_file_survey_file_survey_files_path, 
      :value => value, 
      :id_element => '#record_survey_file_id'
    ) +
    hidden_field(:record, :survey_file_id)
  end

  def plan_file_plan_number_form_column(record, options)
    prefixes = ['BC', 'SK', 'PR', 'DPW', 'E', 'G', 'V'].map{|a| [a,a]} + [['Custom', '']]
    select(:record, :prefix, options_for_select(prefixes, {:selected => record.prefix})) +
    text_field(
      :record, 
      :plan_number, 
      :value => number_with_precision(record.suffix, :precision => 2)
    )
  end
end
