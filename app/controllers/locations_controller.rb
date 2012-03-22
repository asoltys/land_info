class LocationsController < ApplicationController
  autocomplete :location, :name,
    :full => true, 
    :limit => 20, 
    :id_element => '#record_location_id'

  active_scaffold :location do |config|
    config.actions = []
  end
end 
