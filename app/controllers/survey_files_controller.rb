class SurveyFilesController < ApplicationController
  active_scaffold :survey_file do |conf|
    conf.columns = [:survey_file, :start_date, :completion_date]
  end
end 
