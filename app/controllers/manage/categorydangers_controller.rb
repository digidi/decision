# encoding: utf-8

class Manage::CategorydangersController < Manage::ApplicationController
  inherit_resources
  load_and_authorize_resource
   
  def new
    @categorydanger = Categorydanger.new(:parent_id => params[:parent_id])
  end
  
  def index 
    @categorydangers = Categorydanger.ordered_by_ancestry.order("title")
  end

end

