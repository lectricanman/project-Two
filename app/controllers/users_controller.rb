class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to('/users')
    else
      redirect_to('/users/new')
    end
  end
  def show
    @user = User.find_by(id: params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :image_url,
      :password_confirmation
    )
  end
end #class
