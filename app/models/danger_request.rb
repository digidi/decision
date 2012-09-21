class DangerRequest < ActiveRecord::Base
 
  self.table_name = "dangers_requests"
  
  belongs_to :danger
  belongs_to :request
  
  validates_presence_of :danger_id
  validates_uniqueness_of :danger_id, :scope => :request_id
  
  has_many :danger_request_users
  has_many :users, :through => :danger_request_users
  
end
