class SurveyFilesController < ApplicationController
  helper :locations

  active_scaffold :survey_file do |config|
		config.label = "Survey Files"
    config.list.columns = [:survey_file, :description, :location]
    config.columns = [:description, :location_id, :edrm_number, :start_date]
		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"
    config.columns[:survey_file].set_link(:edit)

    config.actions << :field_search
    config.actions.exclude :nested
  end
end 
