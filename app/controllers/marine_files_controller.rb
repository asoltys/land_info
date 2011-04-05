class MarineFilesController < ApplicationController
  active_scaffold :marine_file do |conf|
		conf.label = "Marine Files"
    conf.list.columns = [:file_number]
  end
end 
