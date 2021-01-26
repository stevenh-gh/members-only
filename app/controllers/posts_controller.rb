class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit :post, :user_id
  end
end
