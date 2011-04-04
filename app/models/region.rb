class Region < ActiveRecord::Base
  def to_label
    "#{number} #{code}"
  end
end
