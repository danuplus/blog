class Post::P1CommentsController < ApplicationController
  def create
    post = Post::P1Post.find(params[:p1_post_id])
    @comment = post.p1_comments.build(params[:post_p1_comment])
    if @comment.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    post = Post::P1Post.find(params[:p1_post_id])
    @comment = post.p1_comments.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.js
      end
    end
  end
end
