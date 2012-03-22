class DrawingsController < ApplicationController
  active_scaffold :drawing do |config|
    
    config.columns = [
      :file_name,
      :title,
      :status,
      :project_number,
      :surveyor,
      :drawn_by,
      :bcgs
    ]

    config.search.link = false
    config.show.link = false
    config.update.link = false
  end
end 
