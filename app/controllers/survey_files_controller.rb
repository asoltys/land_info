class SurveyFilesController < ApplicationController
  active_scaffold :survey_file do |conf|
		conf.label = "Survey Files"
    conf.list.columns = [:survey_file, :start_date, :completion_date]
		columns[:survey_file].description = "Survey File Number"
		columns[:start_date].description = "Start Date (MM/DD/YYYY)"
		columns[:completion_date].description = "Completion Date (MM/DD/YYYY)"
  end
end 
