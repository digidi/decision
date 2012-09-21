# encoding: utf-8

class CriterionRequestUsersController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  belongs_to :task do
    belongs_to :request do
      belongs_to :criterion_request
    end
  end
  
  def update
    update! do |success, failure|
      @criterion_request_user.user_id = current_user.id
      @criterion_request_user.save!
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
  
  def create
    create! do |success, failure|
      @criterion_request_user.user_id = current_user.id
      @criterion_request_user.save!
      success.html { redirect_to task_request_path(@task, @request) }
    end
  end
   
end
