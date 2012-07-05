class Task < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  has_many :requests, :dependent => :destroy
end

