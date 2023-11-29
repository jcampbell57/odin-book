class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at desc')
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path
    else
      # to render index from here, @posts needs to be defined again.
      @posts = Post.all.order('created_at desc')
      render :index, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
