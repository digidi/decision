# encoding: utf-8

class Manage::DangersController < Manage::ApplicationController
  inherit_resources
  load_and_authorize_resource
  
   def new
     @danger = Danger.new
      1.times do
        aftermath = @danger.aftermaths.build
      end 
   end  
   
   
  def index 
    @dangers = Danger.paginate(:page => params[:page], :order => 'title')
  end
  
end
