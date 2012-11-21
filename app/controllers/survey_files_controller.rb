class SurveyFilesController < ApplicationController
  helper :locations

  autocomplete :survey_file, :survey_file,
    :full => true, 
    :limit => 20, 
    :id_element => '#record_survey_file_id',
    :display_value => :survey_file_to_two_decimal_places

  def self.condition_for_date_type(column, value, like_pattern)
    ["#{column.search_sql} LIKE '%?%'", like_pattern]
  end

  active_scaffold :survey_file do |config|
		config.label = "Survey Files"

    config.columns = [
      :survey_file,
      :location_id,
      :location_second,
      :description, 
      :edrm_number, 
      :sigma_number,
      :start_date,
      :completion_date,
      :department_section,
      :department_contact,
      :department,
      :plan_files_description
    ]

    config.list.columns = [
      :survey_file,
      :location,
      :location_second,
      :department,
      :description, 
      :start_date,
      :completion_date,
      :plan_files
    ]
    
    config.search.columns = [
      :survey_file, 
      :description, 
      :location,
      :plan_files,
      :start_date,
      :completion_date,
      :department_section,
      :department_contact,
      :edrm_number,
      :sigma_number,
      :plan_files_description
    ]

    config.columns[:department].sort_by :sql => ['department_abbreviation', 'department_section']
    config.columns.exclude(:department)

    config.update.columns.exclude(:survey_file)

    config.columns[:survey_file].set_link(:edit)
    config.columns[:survey_file].label = "File number"
    config.columns[:location_second].label = "Secondary location"

    config.columns[:location].search_sql = 'locations.name'
    config.columns[:plan_files].search_sql = 'plan_files.plan_number'
    config.columns[:plan_files_description].search_sql = 'plan_files.description'
    config.columns.exclude(:plan_files_description)
    config.update.columns.exclude(:plan_files_description)

		columns[:start_date].description = "YYYY-MM-DD"
		columns[:completion_date].description = "YYYY-MM-DD"

    config.list.sorting = { :survey_file => :desc }

    config.show.link = false
    config.search.link = false
    config.update.link = false

    config.action_links.add 'show', :label => 'Print', :page => true, :type => :member, :html_options => { :class => 'print' }
  end
end 
