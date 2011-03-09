require 'spec_helper'

describe "survey_files/edit.html.erb" do
  before(:each) do
    @survey_file = assign(:survey_file, stub_model(SurveyFile,
      :survey_file => "MyString",
      :project_number => "MyString",
      :ssa_number => "MyString"
    ))
  end

  it "renders the edit survey_file form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => survey_files_path(@survey_file), :method => "post" do
      assert_select "input#survey_file_survey_file", :name => "survey_file[survey_file]"
      assert_select "input#survey_file_project_number", :name => "survey_file[project_number]"
      assert_select "input#survey_file_ssa_number", :name => "survey_file[ssa_number]"
    end
  end
end
