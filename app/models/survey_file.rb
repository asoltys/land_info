class SurveyFile < ActiveRecord::Base
  belongs_to :location
  has_many :plan_files
  validates :survey_file, :uniqueness => true

  def to_label
    "Survey File ##{sprintf('%.2f', survey_file)}"
  end

  def department
    "#{department_abbreviation} #{department_section}"
  end

  def plan_files_description
  end
end
