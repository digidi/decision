# encoding: utf-8

class Manage::UsersController < Manage::ApplicationController
  inherit_resources
  load_and_authorize_resource
   
  def index
    @users = User.all
  end 
     
end
