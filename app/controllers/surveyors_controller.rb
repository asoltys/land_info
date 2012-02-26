class SurveyorsController < ApplicationController
  active_scaffold :surveyor do |config|
    config.list.columns = [:first_name, :last_name, :city]
    config.columns[:first_name].set_link(:edit)
    config.columns[:last_name].set_link(:edit)
    config.list.always_show_search = true
  end
end 
