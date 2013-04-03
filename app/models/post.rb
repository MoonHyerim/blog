class Post < ActiveRecord::Base
  attr_accessible :content, :title, :writer
  has_many :comments, :dependent => :destroy
end
