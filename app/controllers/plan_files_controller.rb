class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |config|
		config.label = "Plan Files"
    config.columns = [:plan_number, :location, :size, :title, :drawings]
    config.columns[:plan_number].set_link(:edit)
    config.update.columns.exclude [:location, :drawings]
    config.list.always_show_search = true
    config.delete.link = false
  end
end 
