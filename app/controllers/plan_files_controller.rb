class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |conf|
		conf.label = "Plan Files"
    conf.list.columns = [:plan_number, :dfrp_number, :location_number, :survey_file, :tiff_file]
  end
end 

