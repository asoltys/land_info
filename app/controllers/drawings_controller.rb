class DrawingsController < ApplicationController
  active_scaffold :drawing do |config|
    
    config.columns = [
      :title,
      :status,
      :surveyor,
      :drawn_by,
      :bcgs,
      :tiff_file
    ]

    config.columns[:tiff_file].label = "Number"
    config.columns[:drawing_file_name].label = "File name"
    config.columns[:drawing_file_size].label = "Size"

    config.columns[:drawing_file_name].set_link(:edit)

    config.search.link = false
    config.show.link = false
    config.update.link = false
  end
end 
