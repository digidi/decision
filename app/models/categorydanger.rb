class Categorydanger < ActiveRecord::Base

  validates_presence_of :title
  validates_uniqueness_of :title
  
  has_and_belongs_to_many :dangers
    
  has_ancestry
  
end
