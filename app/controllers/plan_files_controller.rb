class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |conf|
		conf.label = "Plan Files"
    conf.list.columns = [:plan_number, :dfrp_number, :location_number, :survey_file, :tiff_file]
		columns[:plan_number].description = "Plan Number"
		columns[:dfrp_number].description = "DFRP Number"
		columns[:location_number].description = "Location Number"
		columns[:survey_file].description = "Survey File Number"
  end
end 

