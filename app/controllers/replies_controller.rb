class RepliesController < ApplicationController

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.user_id = current_user.id
    @reply.post_id = Post.find_by(id: params[:post_id]).id
    if @reply.save
      redirect_to("/posts/#{params[:post_id]}")
    else
      redirect_to('/replys/new')
    end
  end

  def show
    @reply = Reply.find_by(id: params[:id])
  end

  def destroy
    @reply = Reply.find_by(id: params[:id])
    @reply.destroy
  end

  private

  def reply_params
    params.require(:reply).permit(
      :text,
      :opt_image_url,
      :post_name
    )
  end

end
