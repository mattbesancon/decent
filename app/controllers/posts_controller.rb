class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  
  def index
    @posts = Post.all
  end

  def show
  end

  def create
    @post = Post.new(post_params)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:tittle, :author, :comment, :rating)
  end
end
