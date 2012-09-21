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
  
  def show
    @user = User.find(current_user)
    @request_user = RequestUser.where(:request_id => @request.id, :user_id => @user.id)
    @user_count = RequestUser.count(:conditions => "request_id")
  end
  
  def edit
    @user = User.find(current_user)
    #@criterion_request_user = CriterionRequestUser.where(:criterion_request_id => @criterion_request.id, :user_id => current_user.id)
  end

end


