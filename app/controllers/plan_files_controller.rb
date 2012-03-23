class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |config|
		config.label = "Plan Files"

    config.columns = [
      :plan_number,
      :location_id,
      :size,
      :title,
      :edrm_number
    ]

    config.search.columns = [
      :plan_number,
      :location,
      :drawings
    ]

    config.list.columns = [
      :plan_number,
      :location,
      :size,
      :title,
      :drawings
    ]

    config.columns[:drawings].search_sql = 'drawings.file_name'

    config.columns[:location].search_sql = 'locations.name'
    config.columns[:plan_number].set_link(:edit)
    config.update.columns.exclude [:location, :drawings]
    config.list.always_show_search = false

    config.list.sorting = { :id => :desc }

    config.search.link = false
    config.show.link = false
    config.update.link = false
  end
end 
