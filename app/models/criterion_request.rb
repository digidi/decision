class CriterionRequest < ActiveRecord::Base

  self.table_name = "criterions_requests"
  
  belongs_to :criterion
  belongs_to :request
  
  has_many :criterion_request_users
  has_many :users, :through => :criterion_request_users

  
  validates_presence_of :criterion_id
 # validates_uniqueness_of :criterion_id, :scope => [:request_id, :user_id]
  

end
