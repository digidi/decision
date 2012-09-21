class Request < ActiveRecord::Base
  has_many :criterions
  has_many :experts
  
  has_and_belongs_to_many :users
  
  belongs_to :task
  belongs_to :user
  
  has_many :criterion_requests
  has_many :criterions, :through => :criterion_requests, :dependent => :destroy
 # has_many :users, :through => :criterion_requests
  
  has_many :request_users
  has_many :users, :through => :request_users, :dependent => :destroy
  
 # has_many :users, :through => :expert_users
  
  has_many :danger_requests
  has_many :dangers, :through => :danger_requests, :dependent => :destroy
  
  validates_uniqueness_of :title
  validates_presence_of :title
  
end
