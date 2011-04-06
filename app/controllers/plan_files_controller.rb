class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |conf|
		conf.label = "Plan Files"
    conf.list.columns = [:plan_number, :location, :size, :title, :tiff_file]
    conf.columns[:plan_number].set_link(:edit)
  end
end 
