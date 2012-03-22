class SurveyFilesController < ApplicationController
  helper :locations

  def self.condition_for_date_type(column, value, like_pattern)
    ["#{column.search_sql} LIKE '%?%'", like_pattern]
  end

  active_scaffold :survey_file do |config|
		config.label = "Survey Files"

    config.actions << :nested

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
      :department_contact
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
      :department_contact
    ]

    config.update.columns.exclude :survey_file

    config.columns[:survey_file].set_link(:edit)
    config.columns[:survey_file].label = "File number"
    config.columns[:location_second].label = "Secondary location"

    config.columns[:location].search_sql = 'locations.name'
    config.columns[:plan_files].search_sql = 'plan_files.plan_number'

    config.columns[:start_date].search_ui = :datetime
    config.columns[:completion_date].search_ui = :datetime

		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"

    config.list.sorting = { :survey_file => :desc }

    config.search.link = false
    config.show.link = false
    config.update.link = false
  end
end 
