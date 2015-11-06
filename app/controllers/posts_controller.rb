class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(Post_params)
    if user.save
      redirect_to('/users')
    else
      redirect_to('/users/new')
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

  def Post_params
    params.require(:post).permit(
      :title,
      :image_url,
      :password_confirmation
    )
  end

end
