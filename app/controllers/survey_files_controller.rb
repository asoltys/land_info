class SurveyFilesController < ApplicationController
  active_scaffold :survey_file do |conf|
		conf.label = "Survey Files"
    conf.list.columns = [:survey_file, :description, :location]
		columns[:start_date].description = "(MM/DD/YYYY)"
		columns[:completion_date].description = "(MM/DD/YYYY)"
    conf.columns[:description].set_link(:update)
  end
end 
