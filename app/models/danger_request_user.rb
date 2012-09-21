class DangerRequestUser < ActiveRecord::Base

  self.table_name = "dangers_requests_users"
  
  belongs_to :danger_request
  belongs_to :user

  has_many :aftermaths, :dependent => :destroy
  
  accepts_nested_attributes_for :aftermaths, :reject_if => lambda { |a| a  [:aftermath].blank? }, :allow_destroy => true
  

 # validates_presence_of :criterion_id
 validates_uniqueness_of :danger_request_id, :scope => [:user_id]
  

end
