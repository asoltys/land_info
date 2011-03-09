require 'spec_helper'

describe "survey_files/show.html.erb" do
  before(:each) do
    @survey_file = assign(:survey_file, stub_model(SurveyFile,
      :survey_file => "Survey File",
      :project_number => "Project Number",
      :ssa_number => "Ssa Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Survey File/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ssa Number/)
  end
end
