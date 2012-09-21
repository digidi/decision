class RequestUser < ActiveRecord::Base

  self.table_name = "requests_users"
  
  belongs_to :user
  belongs_to :request

#  validates_presence_of :user_id
 # validates_uniqueness_of :user_id, :scope => :request_id
  
end
