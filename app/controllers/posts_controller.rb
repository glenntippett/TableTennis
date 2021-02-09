class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :content)
  end
end
