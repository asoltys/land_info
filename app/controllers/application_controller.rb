class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  ActiveScaffold.set_defaults do |config| 
    config.ignore_columns.add [:created_at, :updated_at, :lock_version]
    config.list.per_page = 20
    config.search.link = 'false'
    config.list.empty_field_text = '(none)'
  end

  def index 
  end
end
