class PlanFile < ActiveRecord::Base
  def to_label
    "Plan File ##{plan_number}"
  end
end
