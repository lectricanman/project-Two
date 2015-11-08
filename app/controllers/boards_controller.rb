class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find_by(id: params[:id])
    @posts = Post.where("board_id = '#{params[:id]}'")
  end
end
