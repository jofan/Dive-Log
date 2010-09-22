class LogsController < ApplicationController
  
  def index
    @logs = Log.all
  end
  
  def show
    @log = Log.find(params[:id])
    @title = "Dive log # #{@log.nr}"
  end
  
  def new
    @log = Log.new
    @title = "Add log"
  end
  
  def create
    @log = Log.new(params[:log])
    if @log.save
      flash[:notice] = "Log was saved successfully"
      redirect_to @log
    else
      flash[:alert] = "Log has not been created"
      render :action => "new"
    end
  end
  
  def edit
    @log = Log.find(params[:id])
  end
  
  def update
    @log = Log.find(params[:id])
    if @log.update_attributes(params[:log])
      flash[:notice] = "Log has been updated"
      redirect_to @log
    else
      flash[:alert] = "Log has not been updated"
      render :action => "edit"
    end
  end
  
  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    flash[:notice] = "Log has been deleted"
    redirect_to logs_path
  end
  
end