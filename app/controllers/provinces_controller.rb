class ProvincesController < ApplicationController
  active_scaffold :province do |conf|
    conf.list.columns = [:name, :number, :abbreviation]
  end
end 
