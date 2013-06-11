class Post::P1Comment < ActiveRecord::Base
  belongs_to :p1_post, :class_name => "Post::P1Post", :foreign_key => "post_p1_post_id"
  attr_accessible :body, :commenter
end
