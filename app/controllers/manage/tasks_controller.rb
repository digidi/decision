# encoding: utf-8

class Manage::TasksController < Manage::ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  def index 
    @tasks = Task.paginate(:page => params[:page], :order => 'title')
  end
     
end
