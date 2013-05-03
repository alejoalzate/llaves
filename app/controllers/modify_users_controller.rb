class ModifyUsersController < ApplicationController
 
  def index
    @modify_users = ModifyUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modify_users }
    end
  end
  def show
      @modify_user = ModifyUser.find(params[:id])
  end

  def new
      @modify_user = ModifyUser.new
  end

  def edit
      @modify_user = ModifyUser.find(params[:id])
  end

  def create
      @modify_user = ModifyUser.new(params[:modify_user])
      render :action => :new unless @modify_user.save
  end

  def update
      @modify_user = ModifyUser.find(params[:id])
      render :action => :edit unless @modify_user.update_attributes(params[:modify_user])
  end

  def destroy
      @modify_user = ModifyUser.find(params[:id])
      @modify_user.destroy
  end
  
end