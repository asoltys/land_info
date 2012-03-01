class SurveyFilesController < ApplicationController
  helper :locations

  active_scaffold :survey_file do |config|
		config.label = "Survey Files"

    config.actions << :nested
    config.actions << :field_search

    config.columns = [
      :survey_file,
      :description, 
      :location_id, 
      :edrm_number, 
      :sigma_number,
      :start_date,
      :completion_date,
      :active
    ]

    config.search.columns = config.list.columns = [
      :survey_file, 
      :description, 
      :location, 
      :plan_files
    ]

    config.columns[:survey_file].set_link(:edit)
    config.columns[:location].search_sql = 'locations.name'

		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"

    config.list.sorting = { :survey_file => :desc }
    config.list.always_show_search = true
  end
end 
