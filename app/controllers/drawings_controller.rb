class DrawingsController < ApplicationController
  active_scaffold :drawing do |conf|
    conf.update.columns.exclude [:drawing_file_name, :drawing_content_type, :drawing_file_size, :drawing_updated_at]
  end
end 
