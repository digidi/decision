class DangerRequest < ActiveRecord::Base
 
  self.table_name = "dangers_requests"
  
  belongs_to :danger
  belongs_to :request
  
    
  has_many :aftermaths, :dependent => :destroy
  
  accepts_nested_attributes_for :aftermaths, :reject_if => lambda { |a| a  [:aftermath].blank? }, :allow_destroy => true
  

end
