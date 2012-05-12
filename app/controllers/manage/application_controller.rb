class Manage::ApplicationController < ApplicationController
  protect_from_forgery
  
  layout 'manage_layout'
 
  before_filter :authenticate_user!
  
  before_filter :check_authorized

  def check_authorized
    redirect_to root_path unless can? :admin, :all
  end
  
end
