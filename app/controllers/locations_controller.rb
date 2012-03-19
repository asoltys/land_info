class LocationsController < ApplicationController
  autocomplete :location, :name,
    :full => true, 
    :limit => 20, 
    :id_element => '#record_location_id'

  active_scaffold :location do |conf|
    conf.list.columns = [:name, :latitude, :longitude]
    conf.columns[:name].set_link(:edit)
  end
end 
