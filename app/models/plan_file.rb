class PlanFile < ActiveRecord::Base
  belongs_to :location
  has_many :drawings

  def to_label
    "Plan File ##{plan_number}"
  end
end
