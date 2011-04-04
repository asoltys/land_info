class FeaturesController < ApplicationController
  active_scaffold :feature do |conf|
    conf.list.columns = [:type, :code, :symbol, :colour]
  end
end 
