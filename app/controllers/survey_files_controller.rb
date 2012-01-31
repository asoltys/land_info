class SurveyFilesController < ApplicationController
  active_scaffold :survey_file do |config|
		config.label = "Survey Files"
    config.columns = [:survey_file, :description, :location]
		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"
    config.columns[:survey_file].set_link(:edit)
    config.update.columns.exclude :location
    config.actions << :field_search
  end
end 
