class LandDistrict < ActiveRecord::Base
  def to_label
    name 
  end
end
