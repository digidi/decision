# encoding: utf-8

class RequestsController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  belongs_to :task
  
  def create 
    params_request = params[:request].merge(:user => current_user)
    @request = Request.new(params_request) 
    @request.save!  
    if @request.save 
      @request.task_id = params[:task_id]  
      @request.save!
    end 
      redirect_to task_request_path(@task, @request)
  end

end


