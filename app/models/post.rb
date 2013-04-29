class Post < ActiveRecord::Base
  attr_accessible :content, :title, :writer
  
  validates :name, :presence => true
  validates :title, :presence => true
  					
  has_many :comments
end

