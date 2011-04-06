class LandDistrictsController < ApplicationController
  active_scaffold :land_district do |conf|
    conf.list.columns = [:name, :code]
    conf.columns[:name].set_link(:edit)
  end
end 
