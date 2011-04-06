class MarineFilesController < ApplicationController
  active_scaffold :marine_file do |conf|
		conf.label = "Marine Files"
    conf.list.columns = [:file_number, :reservation_use, :reservation_term, :Expiry, :Notes]
    conf.columns[:file_number].set_link(:update)
  end
end 
