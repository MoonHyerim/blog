class Post < ActiveRecord::Base
  attr_accessible :content, :title, :writer
end
