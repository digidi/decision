class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  
  
  validates_presence_of :fio
  validates_uniqueness_of :fio
  
  #has_many :requests
  
  #has_and_belongs_to_many :experts
  
  has_many :criterion_requests
  has_many :criterions, :through => :criterion_requests, :dependent => :destroy
  has_many :requests, :through => :criterion_requests
  
  has_many :request_users
  has_many :requests, :through => :request_users
  
  has_many :criterion_request_users
  has_many :criterion_requests, :through => :criterion_request_users
  
  has_many :danger_request_users
  has_many :danger_requests, :through => :danger_request_users
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

attr_accessible :fio, :description, :email, :password, :password_confirmation, :remember_me, :roles
  
  ROLES = %w[admin moderator expert]
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def is?(role)
    roles.include?(role.to_s)
  end

end
