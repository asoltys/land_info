class SurveyFile < ActiveRecord::Base
  belongs_to :location
  has_many :plan_files
  validates :survey_file, :uniqueness => true

  def to_label
    "Survey File ##{survey_file_to_two_decimal_places}"
  end

  def department
    "#{department_abbreviation} #{department_section}"
  end

  def plan_files_description
  end

  def survey_file_to_two_decimal_places
    sprintf('%.2f', survey_file)
  end
end
