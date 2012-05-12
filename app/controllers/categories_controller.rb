# encoding: utf-8

class CategoriesController < ApplicationController
  inherit_resources
  load_and_authorize_resource
   
  def new
    @category = Category.new(:parent_id => params[:parent_id])
  end
  
  def index 
    @categories = Category.paginate(:page => params[:page], :order => 'title')
  end
    
end
