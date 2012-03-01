# encoding: utf-8

class UsersController < ApplicationController
  inherit_resources
   
  def index
    @users = User.all
  end 
     
end
