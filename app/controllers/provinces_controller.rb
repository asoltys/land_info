class ProvincesController < ApplicationController
  active_scaffold :province do |conf|
    conf.list.columns = [:name, :number, :abbreviation]
    conf.columns[:name].set_link(:edit)
  end
end 
