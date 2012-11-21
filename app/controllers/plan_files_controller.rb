class PlanFilesController < ApplicationController
  before_filter :format_plan_number, :only => :save

  active_scaffold :plan_file do |config|
		config.label = "Plan Files"

    config.columns = [
      :survey_file_id,
      :plan_number,
      :location_id,
      :secondary_location,
      :description,
      :edrm_number,
      :drawing_description
    ]

    config.search.columns = [
      :plan_number,
      :description,
      :location,
      :secondary_location,
      :drawings,
      :drawing_description
    ]

    config.list.columns = [
      :survey_file_id,
      :plan_number,
      :location,
      :secondary_location,
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

    # config.action_links.add 'subrecord', :label => 'Subrecords', :type => :member
    config.action_links.add 'show', :label => 'Print', :page => true, :type => :member, :html_options => { :class => 'print' }
    active_scaffold_config.columns = active_scaffold_config.columns._inheritable
  end

  def latest
    respond_to do |format|
      format.json { render :json => PlanFile.latest(params[:prefix]).as_json }
    end
  end

  def format_plan_number
    params[:record][:plan_number] = params[:record][:prefix] + params[:record][:plan_number]
  end

  def subrecord
    parent = PlanFile.find(params[:id])
    children = parent.plan_number 
  end
end 
