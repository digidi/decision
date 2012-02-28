class Category < ActiveRecord::Base
  validates_uniqueness_of :title
  
  has_and_belongs_to_many :criterions
    
  has_ancestry
  
end
