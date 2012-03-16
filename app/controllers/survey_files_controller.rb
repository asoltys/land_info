class SurveyFilesController < ApplicationController
  helper :locations

  autocomplete :location, :name,
    :full => true, 
    :limit => 20, 
    :id_element => '#record_location_id'

  active_scaffold :survey_file do |config|
		config.label = "Survey Files"

    config.actions << :nested

    config.columns = [
      :survey_file,
      :location_id,
      :description, 
      :edrm_number, 
      :sigma_number,
      :start_date,
      :completion_date
    ]

    config.list.columns = [
      :survey_file, 
      :description, 
      :location,
      :plan_files
    ]
    
    config.search.columns = [
      :survey_file, 
      :description, 
      :location
    ]

    config.update.columns.exclude :survey_file

    config.columns[:survey_file].set_link(:edit)
    config.columns[:survey_file].label = "Survey File #"

    config.columns[:location].search_sql = 'locations.name'

		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"

    config.list.sorting = { :survey_file => :desc }
    config.search.link = false
  end
end 
