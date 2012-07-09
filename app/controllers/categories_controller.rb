# encoding: utf-8

class CategoriesController < ApplicationController
  inherit_resources
  load_and_authorize_resource
   
  def new
    @category = Category.new(:parent_id => params[:parent_id])
  end
  
  def index 
    @categories = Category.ordered_by_ancestry.order("title")
  end
    
end
