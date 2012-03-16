class Location < ActiveRecord::Base
  def to_label
    name
  end

  def as_json(options)
    { :value => name, :label => name }
  end
end
