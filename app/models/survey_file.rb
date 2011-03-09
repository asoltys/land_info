class SurveyFile < ActiveRecord::Base
  def to_label
    "Survey File ##{survey_file}"
  end
end
