class Post::P1Comment < ActiveRecord::Base
  belongs_to :p1_post, :class_name => "Post::P1Post"
  attr_accessible :body, :commenter
end
