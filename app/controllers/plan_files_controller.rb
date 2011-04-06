class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |conf|
		conf.label = "Plan Files"
    conf.list.columns = [:plan_number, :size, :title, :tiff_file]
  end
end 

