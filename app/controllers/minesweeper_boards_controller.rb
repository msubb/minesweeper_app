class MinesweeperBoardsController < ApplicationController
  def new
    @minesweeper_board = MinesweeperBoard.new
    @recent_boards = MinesweeperBoard.order(created_at: :desc).limit(10)
  end

  def create
    @minesweeper_board = MinesweeperBoard.new(minesweeper_board_params)
    if @minesweeper_board.save
      redirect_to @minesweeper_board
    else
      @recent_boards = MinesweeperBoard.order(created_at: :desc).limit(10)
      render :new
    end
  end

  def show
    @minesweeper_board = MinesweeperBoard.find(params[:id])
  end

  def index
    @minesweeper_boards = MinesweeperBoard.order(created_at: :desc)
  end

  private

  def minesweeper_board_params
    params.require(:minesweeper_board).permit(:name, :email, :width, :height, :mines)
  end
end
