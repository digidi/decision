# encoding: utf-8

class CriterionsController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  
  def index 
    @criterions = Criterion.paginate(:page => params[:page], :order => 'title')
  end
  
  
end
