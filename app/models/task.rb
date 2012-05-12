class Task < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  has_and_belongs_to_many :criterions
  has_and_belongs_to_many :dangers 
  has_many :requests, :dependent => :destroy
end

