class Drawing < ActiveRecord::Base
  belongs_to :location
  belongs_to :plan_file
  belongs_to :surveyor
  has_attached_file :drawing
end
