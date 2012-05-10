class PlanFilesController < ApplicationController
  active_scaffold :plan_file do |config|
		config.label = "Plan Files"

    config.columns = [
      :survey_file_id,
      :plan_number,
      :location_id,
      :size,
      :description,
      :edrm_number,
      :drawing_description
    ]

    config.search.columns = [
      :plan_number,
      :description,
      :location,
      :drawings,
      :drawing_description
    ]

    config.list.columns = [
      :survey_file_id,
      :plan_number,
      :location,
      :size,
      :description,
      :drawings
    ]

    config.columns[:drawings].search_sql = 'drawings.file_name'
    config.columns[:drawing_description].search_sql = 'drawings.description'
    config.columns.exclude(:drawing_description)

    config.columns[:location].search_sql = 'locations.name'
    config.columns[:plan_number].set_link(:edit)
    config.update.columns.exclude [:location, :drawings]
    config.list.always_show_search = false

    config.list.sorting = { :id => :desc }

    config.search.link = false
    config.show.link = false
    config.update.link = false

    config.action_links.add 'print', :label => 'Print', :page => true, :type => :member
    active_scaffold_config.columns = active_scaffold_config.columns._inheritable
  end
end 
