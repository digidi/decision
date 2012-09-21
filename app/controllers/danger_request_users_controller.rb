# encoding: utf-8

class DangerRequestUsersController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  belongs_to :task do
    belongs_to :request do
      belongs_to :danger_request
    end
  end
  
  def new
     @danger_request_user = DangerRequestUser.new
      1.times do
        aftermath = @danger_request_user.aftermaths.build
      end 
   end 
  
  def update
    update! do |success, failure|
      @danger_request_user.user_id = current_user.id
      @danger_request_user.save!
    #  success.html { redirect_to edit_task_request_path(@task, @request) }
    end
  end
  
  def create
    create! do |success, failure|
      @danger_request_user.user_id = current_user.id
      @danger_request_user.save!
    #  success.html { redirect_to edit_task_request_path(@task, @request) }
    end
  end
   
end
