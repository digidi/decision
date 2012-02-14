# encoding: utf-8

class CriterionsController < ApplicationController
  inherit_resources
  
  def new
    @criterion = Criterion.new
    3.times do
      level = @criterion.levels.build
    end
  end
end
