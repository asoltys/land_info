class LocationsController < ApplicationController
  active_scaffold :location do |conf|
    conf.list.columns = [:name, :latitude, :longitude]
  end
end 
