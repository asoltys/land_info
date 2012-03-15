class DrawingsController < ApplicationController
  active_scaffold :drawing do |config|
    
    config.columns = [:tiff_file]

    config.update.columns.exclude [
      :drawing_file_name, 
      :drawing_content_type, 
      :drawing_file_size, 
      :drawing_updated_at
    ]

    config.columns[:drawing_file_name].set_link(:edit)
  end
end 
