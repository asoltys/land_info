class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |config|
		config.label = "Plan Files"

    config.columns = [
      :plan_number,
      :location_id,
      :size,
      :title
    ]

    config.search.columns = [
      :plan_number,
      :location
    ]

    config.list.columns = [
      :plan_number,
      :location,
      :size,
      :title,
      :drawings
    ]

    config.columns[:location].search_sql = 'locations.name'
    config.columns[:plan_number].set_link(:edit)
    config.update.columns.exclude [:location, :drawings]
    config.list.always_show_search = false

    config.search.link = false
    config.show.link = false
    config.update.link = false
  end
end 
