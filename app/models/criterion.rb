class Criterion < ActiveRecord::Base
  has_and_belongs_to_many :tasks
  has_many :levels, :dependent => :destroy
  accepts_nested_attributes_for :levels, :reject_if => lambda { |a| a  [:level].blank? }, :allow_destroy => true
  
end
