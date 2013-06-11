class Post::P1Post < ActiveRecord::Base
	has_many :p1_comments, :class_name => "Post::P1Comment"
  attr_accessible :content, :name, :title

	validates :title,       :presence => true, :length => { :minimum => 3 }
end
