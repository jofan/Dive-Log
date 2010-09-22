class LogsController < ApplicationController
  
  def index
    
  end
  
  def show
    @log = Log.find(params[:id])
  end
  
  def new
    @log = Log.new
  end
  
  def create
    @log = Log.new(params[:log])
    @log.save
    flash[:notice] = "Log was saved successfully"
    redirect_to @log
  end
  
end
