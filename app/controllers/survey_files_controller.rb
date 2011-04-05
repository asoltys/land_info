class SurveyFilesController < ApplicationController
  active_scaffold :survey_file do |conf|
		conf.label = "Survey Files"
    conf.list.columns = [:survey_file, :start_date, :completion_date]
		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"
  end
end 
