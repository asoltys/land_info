class RegionsController < ApplicationController
  active_scaffold :region do |conf|
    conf.list.columns = [:number, :code]
  end
end 
