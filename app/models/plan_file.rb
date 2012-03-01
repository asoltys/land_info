class PlanFile < ActiveRecord::Base
  belongs_to :location
  belongs_to :survey_file
  has_many :drawings

  def to_label
    "Plan File ##{plan_number}"
  end
end
