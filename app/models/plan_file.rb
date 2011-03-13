class PlanFile < ActiveRecord::Base
  has_many :drawings

  def to_label
    "Plan File ##{plan_number}"
  end
end
