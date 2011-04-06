class LocationsController < ApplicationController
  active_scaffold :location do |conf|
    conf.list.columns = [:name, :latitude, :longitude]
    conf.columns[:name].set_link(:edit)
  end
end 
