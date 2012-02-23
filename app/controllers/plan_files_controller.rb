class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |config|
		config.label = "Plan Files"
    config.list.columns = [:plan_number, :location, :size, :title, :tiff_file]
    config.columns[:plan_number].set_link(:edit)
    config.update.columns.exclude [:location, :drawings]
  end
end 
