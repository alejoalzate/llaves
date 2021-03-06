class FormatSurveysController < ApplicationController
  def index
      if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @format_surveys = FormatSurvey.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @format_surveys }
    end
  end
  def show
      @format_survey = FormatSurvey.find(params[:id])
  end

  def new
      @format_survey = FormatSurvey.new
  end

  def edit
      @format_survey = FormatSurvey.find(params[:id])
  end

  def create
      @format_survey = FormatSurvey.new(params[:format_survey])
      render :action => :new unless @format_survey.save
  end

  def update
      @format_survey =  FormatSurvey.find(params[:id])
      render :action => :edit unless @format_survey.update_attributes(params[:format_survey])
  end

  def destroy
      @format_survey = FormatSurvey.find(params[:id])
      @format_survey.destroy
  end
  
end
