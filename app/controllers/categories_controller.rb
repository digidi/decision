# encoding: utf-8

class CategoriesController < ApplicationController
  inherit_resources
   
  def new
    @category = Category.new(:parent_id => params[:parent_id])
  end
    
end
