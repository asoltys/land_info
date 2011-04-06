class SurveyFile < ActiveRecord::Base
  belongs_to :location

  def to_label
    "Survey File ##{survey_file}"
  end
end
