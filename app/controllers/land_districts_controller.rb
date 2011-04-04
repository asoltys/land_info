class LandDistrictsController < ApplicationController
  active_scaffold :land_district do |conf|
    conf.list.columns = [:name, :code]
  end
end 
