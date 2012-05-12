class Request < ActiveRecord::Base
  has_many :criterions
  belongs_to :task
  belongs_to :user
  
  has_many :criterion_requests
  has_many :criterions, :through => :criterion_requests
  
  validates_uniqueness_of :title
  
end
