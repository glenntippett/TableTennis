class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    # @game = Game.find(params[:game_id])
    @post = Post.new(post_params)
    # @booking.game = @game
    @post.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :content)
  end
end
