# encoding: utf-8

class DangerRequestsController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  belongs_to :task do
    belongs_to :request
  end
  
  def new
     @danger_request = DangerRequest.new
      1.times do
        aftermath = @danger_request.aftermaths.build
      end 
   end  
  
  def create
    create! do |success, failure|
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
  
  def destroy
    destroy! do |success, failure|
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
  
  def update
    update! do |success, failure|
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end

  
end
