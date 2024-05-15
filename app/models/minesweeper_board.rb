class MinesweeperBoard < ApplicationRecord
  serialize :board, Array, coder: JSON

  before_create :generate_board

  validates :width, :height, :mines, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validate :mines_must_fit_on_board

  def generate_board
    self.board = Array.new(height) { Array.new(width, ' ') }
    mines.times do
      loop do
        row = rand(height)
        col = rand(width)
        unless board[row][col] == 'X'
          board[row][col] = 'X'
          break
        end
      end
    end
  end

  private

  def mines_must_fit_on_board
    if mines > width * height
      errors.add(:mines, "can't be greater than the number of squares on the board")
    end
  end
end
