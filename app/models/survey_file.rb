class SurveyFile < ActiveRecord::Base
  belongs_to :location
  has_many :plan_files

  def to_label
    "Survey File ##{survey_file}"
  end
end
