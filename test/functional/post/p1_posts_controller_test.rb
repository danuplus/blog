require 'test_helper'

class Post::P1PostsControllerTest < ActionController::TestCase
  setup do
    @post_p1_post = post_p1_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_p1_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_p1_post" do
    assert_difference('Post::P1Post.count') do
      post :create, post_p1_post: { content: @post_p1_post.content, name: @post_p1_post.name, title: @post_p1_post.title }
    end

    assert_redirected_to post_p1_post_path(assigns(:post_p1_post))
  end

  test "should show post_p1_post" do
    get :show, id: @post_p1_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_p1_post
    assert_response :success
  end

  test "should update post_p1_post" do
    put :update, id: @post_p1_post, post_p1_post: { content: @post_p1_post.content, name: @post_p1_post.name, title: @post_p1_post.title }
    assert_redirected_to post_p1_post_path(assigns(:post_p1_post))
  end

  test "should destroy post_p1_post" do
    assert_difference('Post::P1Post.count', -1) do
      delete :destroy, id: @post_p1_post
    end

    assert_redirected_to post_p1_posts_path
  end
end
