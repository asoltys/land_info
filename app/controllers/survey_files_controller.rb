class SurveyFilesController < ApplicationController
  # GET /survey_files
  # GET /survey_files.xml
  def index
    @survey_files = SurveyFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @survey_files }
    end
  end

  # GET /survey_files/1
  # GET /survey_files/1.xml
  def show
    @survey_file = SurveyFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey_file }
    end
  end

  # GET /survey_files/new
  # GET /survey_files/new.xml
  def new
    @survey_file = SurveyFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @survey_file }
    end
  end

  # GET /survey_files/1/edit
  def edit
    @survey_file = SurveyFile.find(params[:id])
  end

  # POST /survey_files
  # POST /survey_files.xml
  def create
    @survey_file = SurveyFile.new(params[:survey_file])

    respond_to do |format|
      if @survey_file.save
        format.html { redirect_to(@survey_file, :notice => 'Survey file was successfully created.') }
        format.xml  { render :xml => @survey_file, :status => :created, :location => @survey_file }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @survey_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /survey_files/1
  # PUT /survey_files/1.xml
  def update
    @survey_file = SurveyFile.find(params[:id])

    respond_to do |format|
      if @survey_file.update_attributes(params[:survey_file])
        format.html { redirect_to(@survey_file, :notice => 'Survey file was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @survey_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_files/1
  # DELETE /survey_files/1.xml
  def destroy
    @survey_file = SurveyFile.find(params[:id])
    @survey_file.destroy

    respond_to do |format|
      format.html { redirect_to(survey_files_url) }
      format.xml  { head :ok }
    end
  end
end
