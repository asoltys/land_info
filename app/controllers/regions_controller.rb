class RegionsController < ApplicationController
  active_scaffold :region do |conf|
    conf.list.columns = [:number, :code]
    conf.columns[:number].set_link(:edit)
  end
end 
