class Danger < ActiveRecord::Base

  has_and_belongs_to_many :tasks
  
  has_many :aftermaths, :dependent => :destroy
  
  accepts_nested_attributes_for :aftermaths, :reject_if => lambda { |a| a  [:aftermath].blank? }, :allow_destroy => true
  
end
