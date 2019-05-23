class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]
  def index
    @boards = Board.all
  end

  def show
    
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end

  end

  def destroy
  end

  private
  def set_board
    @board = Board.find(params[:id])
  end
  def board_params
    params.require(:board).permit(:board_name)
  end
end
