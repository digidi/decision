# encoding: utf-8

class RequestUsersController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  belongs_to :task do
    belongs_to :request
  end
  
  def destroy
    destroy! do |success, failure|
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
  
  def create
    create! do |success, failure|
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
  
  def update
    create! do |success, failure|
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
  
   
end

