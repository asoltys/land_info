class DrawingsController < ApplicationController
  active_scaffold :drawing do |config|
    
    config.columns = [
      :tiff_file 
    ]

    config.list.columns = [:tiff_file, :drawing_file_name, :drawing_file_size]

    config.columns[:tiff_file].label = "Number"
    config.columns[:drawing_file_name].label = "File name"
    config.columns[:drawing_file_size].label = "Size"

    config.columns[:drawing_file_name].set_link(:edit)
  end
end 
