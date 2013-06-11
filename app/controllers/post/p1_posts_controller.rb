class Post::P1PostsController < ApplicationController
  # GET /post/p1_posts
  # GET /post/p1_posts.json
  def index
    @post_p1_posts = Post::P1Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post_p1_posts }
    end
  end

  # GET /post/p1_posts/1
  # GET /post/p1_posts/1.json
  def show
    @post_p1_post = Post::P1Post.find(params[:id])
    @post_p1_posts = Post::P1Post.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post_p1_post }
    end
  end

  # GET /post/p1_posts/new
  # GET /post/p1_posts/new.json
  def new
    @post_p1_post = Post::P1Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post_p1_post }
    end
  end

  # GET /post/p1_posts/1/edit
  def edit
    @post_p1_post = Post::P1Post.find(params[:id])
  end

  # POST /post/p1_posts
  # POST /post/p1_posts.json
  def create
    @post_p1_post = Post::P1Post.new(params[:post_p1_post])

    respond_to do |format|
      if @post_p1_post.save
        format.html { redirect_to @post_p1_post, notice: 'P1 post was successfully created.' }
        format.json { render json: @post_p1_post, status: :created, location: @post_p1_post }
      else
        format.html { render action: "new" }
        format.json { render json: @post_p1_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post/p1_posts/1
  # PUT /post/p1_posts/1.json
  def update
    @post_p1_post = Post::P1Post.find(params[:id])

    respond_to do |format|
      if @post_p1_post.update_attributes(params[:post_p1_post])
        format.html { redirect_to @post_p1_post, notice: 'P1 post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post_p1_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post/p1_posts/1
  # DELETE /post/p1_posts/1.json
  def destroy
    @post_p1_post = Post::P1Post.find(params[:id])
    @post_p1_post.destroy

    respond_to do |format|
      format.html { redirect_to post_p1_posts_url }
      format.json { head :no_content }
    end
  end
end
