class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |conf|
    conf.list.columns = [:plan_number, :dfrp_number, :location_number, :survey_file]
  end
end 

