class CriterionRequestUser < ActiveRecord::Base

  self.table_name = "criterions_requests_users"
  
  belongs_to :criterion_request
  belongs_to :user

  
 # validates_presence_of :criterion_id
  validates_uniqueness_of :criterion_request_id, :scope => [:user_id]
  

end
