class ApplicationController < ActionController::Base
  protect_from_forgery

  ActiveScaffold.set_defaults do |config| 
    config.ignore_columns.add [:created_at, :updated_at, :lock_version]
    config.list.per_page = 60
    config.show.link = ''
    config.delete.link = ''
    config.update.link = ''
  end

  def index 
  end
end
