class LogsController < ApplicationController
  
  def index
    
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
      flash[:notice] = "Log has not been created"
      render :action => "new"
    end
  end
  
end
