class Drawing < ActiveRecord::Base
  belongs_to :plan_file
  has_attached_file :drawing
end
