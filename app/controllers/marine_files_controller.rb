class MarineFilesController < ApplicationController
  active_scaffold :marine_file do |conf|
		conf.label = "Marine Files"
    conf.list.columns = [:file_number, :location, :reservation_use, :reservation_term, :expiry, :notes]
    conf.columns[:file_number].set_link(:edit)
  end
end 
