class MarineFilesController < ApplicationController
  active_scaffold :marine_file do |config|
		config.label = "Marine Files"
    
    config.columns = [
      :file_number, 
      :federal_file,
      :location_id, 
      :reservation_use, 
      :reservation_term, 
      :expiry, 
      :legal,
      :notes,
      :province_file,
      :province_file2
    ]

    config.list.columns = [
      :file_number, 
      :location,
      :reservation_use, 
      :reservation_term, 
      :expiry, 
      :notes
    ]

    config.search.columns = [
      :file_number, 
      :location,
      :reservation_use, 
      :reservation_term, 
      :expiry, 
      :notes
    ]

    config.columns[:location].search_sql = 'locations.name'
    config.columns[:file_number].set_link(:edit)
    config.list.sorting = { :file_number => :desc }

    config.search.link = false
    config.show.link = false
    config.update.link = false
  end
end 
