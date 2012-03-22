class SurveyFile < ActiveRecord::Base
  belongs_to :location
  has_many :plan_files
  has_many :survey_files, :as => :subrecords
  validates :survey_file, :uniqueness => true

  def to_label
    "Survey File ##{survey_file}"
  end

  def department
    "#{department_abbreviation} #{department_section}"
  end

  def subrecords
    SurveyFile.where("survey_file LIKE :survey_file", {:survey_file => "#{survey_file}%"}).all
  end
end
