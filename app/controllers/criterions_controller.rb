# encoding: utf-8

class CriterionsController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  def new
  @criterion = Criterion.new
    3.times do
      level = @criterion.levels.build
    end
  end
  
  def index 
    @criterions = Criterion.paginate(:page => params[:page])
  end
  
  
end
