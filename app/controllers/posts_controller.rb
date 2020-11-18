class PostsController < ApplicationController
  # before_action :authenticate_user!, except: [:home]
  before_action :set_post, only: [:edit, :update, :destroy]
  
  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show
    @post = policy_scope(Post).find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
    authorize @post
    @post.destroy
    redirect_to posts_path
  end

  def flop
    @post = Post.find(params[:id])
    @post.verified = true
    @post.save

    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :author, :content, :photo)
  end
end
