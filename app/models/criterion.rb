class Criterion < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  
  has_and_belongs_to_many :tasks
  has_and_belongs_to_many :categories 
  has_many :levels, :dependent => :destroy
  
  accepts_nested_attributes_for :levels, :reject_if => lambda { |a| a  [:level].blank? }, :allow_destroy => true
    
  default_value_for :answer, 'a1'
  

end
