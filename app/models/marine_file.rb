class MarineFile < ActiveRecord::Base
  belongs_to :location

  def to_label
    "Marine File ##{file_number}"
  end
end

