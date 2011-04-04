class Feature < ActiveRecord::Base
  Feature.inheritance_column = nil

  def to_label
    type
  end
end
