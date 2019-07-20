class PostsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  def index
    @posts=Post.all
  end

  def show
    @post=Post.find(params[:id])
  end

  def new
    @post=Post.new
  end

  def create
    #render plain: params[:post].inspect
    @post=Post.new(post_params)
    if(@post.save)
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
    show
  end

  def update
    show
    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    show
    @post.delete
    redirect_to posts_path

  end

  private def post_params
    params.require(:post).permit(:title,:body)
  end
end
