# encoding: utf-8

class DangersController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
   
  def index 
    @dangers = Danger.paginate(:page => params[:page], :order => 'title')
  end
  
end
