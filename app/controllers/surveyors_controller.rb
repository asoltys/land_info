class SurveyorsController < ApplicationController
  active_scaffold :surveyor do |config|
    config.columns << :name
    config.list.columns = [:name, :company, :city, :street_address]
    config.columns[:name].sort_by :sql => ['first_name', 'last_name']
    config.search.link = false
    config.update.link = false
    config.actions.exclude :show
  end
end 
