require 'spec_helper'

describe "survey_files/index.html.erb" do
  before(:each) do
    assign(:survey_files, [
      stub_model(SurveyFile,
        :survey_file => "Survey File",
        :project_number => "Project Number",
        :ssa_number => "Ssa Number"
      ),
      stub_model(SurveyFile,
        :survey_file => "Survey File",
        :project_number => "Project Number",
        :ssa_number => "Ssa Number"
      )
    ])
  end

  it "renders a list of survey_files" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Survey File".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ssa Number".to_s, :count => 2
  end
end
