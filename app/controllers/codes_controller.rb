class CodesController < ApplicationController
  def index
     if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @codes = Code.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html
      format.json { render json: @codes }
    end
  end
  def show
      @code = Code.find(params[:id])
  end

  def new
      @code = Code.new
  end

  def edit
      @code = Code.find(params[:id])
  end

  def create
      @code = Code.new(params[:code])
      render :action => :new unless @code.save
  end

  def update
      @code = Code.find(params[:id])
      render :action => :edit unless @code.update_attributes(params[:code])
  end

  def destroy
      @code = Code.find(params[:id])
      @code.destroy
  end
  
end
