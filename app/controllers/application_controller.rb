class ApplicationController < ActionController::Base
  protect_from_forgery

  ActiveScaffold.set_defaults do |config| 
    config.ignore_columns.add [:created_at, :updated_at, :lock_version]
    config.list.per_page = 60
    config.list.page_links_window = 5
  end

  def index 
  end

  def search
    redirect_to :controller => 'survey_files', :action => 'show_search'
  end
end
