require "spec_helper"

describe SurveyFilesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/survey_files" }.should route_to(:controller => "survey_files", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/survey_files/new" }.should route_to(:controller => "survey_files", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/survey_files/1" }.should route_to(:controller => "survey_files", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/survey_files/1/edit" }.should route_to(:controller => "survey_files", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/survey_files" }.should route_to(:controller => "survey_files", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/survey_files/1" }.should route_to(:controller => "survey_files", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/survey_files/1" }.should route_to(:controller => "survey_files", :action => "destroy", :id => "1")
    end

  end
end
