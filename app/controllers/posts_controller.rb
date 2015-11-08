class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.board_id = Board.find_by(id: params[:board_id]).id
    if @post.save
      redirect_to('/boards')
    else
      redirect_to('/posts/new')
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :body,
      :opt_image_url,
      :board_name
    )
  end

end
