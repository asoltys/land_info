class PlanFile < ActiveRecord::Base
  belongs_to :location
  belongs_to :survey_file
  has_many :drawings
  attr_accessor :prefix

  def subrecords
    where("plan_number LIKE '#{base_number}%'")
  end

  def to_label
    "Plan File ##{plan_number}"
  end

  def prefix
    r = /([a-zA-Z]*)[\d\.]+/.match(plan_number)
    r.nil? ? 'BC' : r[1]
  end

  def suffix
    r = /[a-zA-Z]*([\d\.]+)/.match(plan_number)
    r.nil? ? '' : r[1]
  end

  def base_number
    r = /(.+)\./.match(plan_number)
    r.nil? ? '' : r[1]
  end

  def drawing_description
    nil
  end

  def self.latest(prefix)
    prefix ||= 'BC'
    prefix += '%'

    return '' if prefix == 'Other'

    PlanFile
      .select(%q{max(cast(substr(plan_number,} + prefix.length.to_s + %q{) as decimal(10,2))) as latest})
      .where("plan_number like ?", prefix).first.latest
  end
end
