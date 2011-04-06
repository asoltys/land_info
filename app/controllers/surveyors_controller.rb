class SurveyorsController < ApplicationController
  active_scaffold :surveyor do |conf|
    conf.list.columns = [:first_name, :last_name, :city]
    conf.columns[:first_name].set_link(:edit)
    conf.columns[:last_name].set_link(:edit)
  end
end 
