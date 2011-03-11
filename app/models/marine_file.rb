class MarineFile < ActiveRecord::Base
  def to_label
    "Marine File ##{file_number}"
  end
end

