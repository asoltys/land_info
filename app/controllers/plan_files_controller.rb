class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |conf|
    conf.list.columns = [:plan_number]
  end
end 

