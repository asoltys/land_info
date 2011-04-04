class SurveyorsController < ApplicationController
  active_scaffold :surveyor do |conf|
    conf.list.columns = [:first_name, :last_name, :city]
  end
end 
