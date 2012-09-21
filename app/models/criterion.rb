class Criterion < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title
  
  has_and_belongs_to_many :categories
  has_many :levels, :dependent => :destroy
  
  has_and_belongs_to_many :tasks
  
  has_many :criterion_requests
  has_many :requests, :through => :criterion_requests
  #has_many :users, :through => :criterion_requests
  
  accepts_nested_attributes_for :levels, :reject_if => lambda { |a| a  [:level].blank? }, :allow_destroy => true
    
  default_value_for :answer, 'a1'
  

end
