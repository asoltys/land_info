class SurveyFile < ActiveRecord::Base
  belongs_to :location
  has_many :plan_files

  def to_label
    "Survey File ##{survey_file}"
  end

  def department
    "#{department_abbreviation} #{department_section}"
  end
end
