class SurveyorsController < ApplicationController
  active_scaffold :surveyor do |config|
    config.list.columns = [:name, :company, :city, :street_address]
    config.search.link = false
  end
end 
