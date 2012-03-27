class DrawingsController < ApplicationController
  active_scaffold :drawing do |config|
    config.columns = [
      :file_name,
      :description,
      :status,
      :project_number,
      :surveyor_id,
      :drawn_by,
      :bcgs
    ]

    config.search.link = false
    config.show.link = false

    config.columns[:surveyor_id].form_ui = :record_select
    config.list.sorting = { :id => :desc }
  end
end 
