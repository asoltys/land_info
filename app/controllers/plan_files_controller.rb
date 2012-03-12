class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |config|
		config.label = "Plan Files"
    config.list.columns = [:plan_number, :location, :size, :title, :drawings]
    config.columns[:plan_number].set_link(:edit)
    config.update.columns.exclude [:location]
    config.list.always_show_search = true
  end
end 
