class MarineFilesController < ApplicationController
  active_scaffold :marine_file do |conf|
    conf.list.columns = [:file_number]
  end
end 
