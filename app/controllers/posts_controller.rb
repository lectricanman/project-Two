class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to('/boards')
    else
      binding.pry
      redirect_to('/posts/new')
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

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
