class Danger < ActiveRecord::Base

  validates_presence_of :title
  validates_uniqueness_of :title

  has_and_belongs_to_many :categorydangers

  
  has_many :danger_requests
  has_many :requests, :through => :danger_requests


end
